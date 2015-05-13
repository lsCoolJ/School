/*
 * Homework 3: Popular Names
 * Written by Ben Foster
 * Instructor: John Mayer
 * Due Date: April 24, 2015
 */

// Include necessary header files.
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

// NAME_LENGTH is the largest a name can be.
#define NAME_LENGTH 15
// NUM_FILES is the total number of files read in.
#define NUM_FILES 10
// FILE_NAMES is the largest number of names per file.
#define FILE_NAMES 100
// MAX_NAMES is the max amount of names possible in this case.
#define MAX_NAMES 1000

/*
 * processName() function is used to check the current name against
 * the current list of names to determine if the current name is a
 * duplicate of a name already listed. If it is a duplicate, then
 * this function will change the corresponding rank accordingly.
 */
void processName(char *str1, char **names, int **rank, int *cpyflag,
 int *blank, int i, int j) {
 	int n;
    for(n = 0; n < MAX_NAMES; n++) {
 		// If current name is the same as any in the list.
		if(strcmp(str1, *(names + n)) == 0) {
			// Change corresponding rank.
			*(*(rank + n) + i) = j+1;
			// Set flag to 1 to indicate duplicate was found.
			*cpyflag = 1;
			// increment blank for trueSize calculation later on.
			*(blank) += 1;
		}
	}
}

/*
 * readOneInput() function is used to read all of the names from one
 * input file. This function will also call the processName() function
 * in order to compare the current name read to the list of names.
 */
void readOneInput(FILE *inFile, int i, int j, char **names, int **rank,
 int *blank) {
 	// Create string to use as a temporary holder for name read in.
	char *str1 = (char*) malloc(NAME_LENGTH*sizeof(char));

	// Read in the name, skip the gender, number, and commas.
	fscanf(inFile, " %[^ ,]%*c%*c%*c%*d", str1);

	// Declare flag to see if current name is not repeated.
	int cpyflag = 0;
	// Compare names to see if there are repeats
	processName(str1, names, rank, &cpyflag, blank, i, j);

	// If current name is not in list, then add it.
	if(cpyflag == 0) {
		// Copy str1 to specific location.
		strcpy(*(names +(i*FILE_NAMES)+j-*blank), str1);
		// Put rank in corresponding location in rank.
		*(*(rank + (i*FILE_NAMES)+j-*blank) + i) = j+1;
	}
}

/*
 * readInputFiles() function is used to read all the input files and
 * generate the names in the names array and also the corresponding
 * ranks in the rank array. This function also calls the readOneInput()
 * function which reads individual names from the current file.
 */
void readInputFiles(char **names, int **rank, int *blank) {
	// Declare all file pointers.
	FILE *files[] = { fopen("yob1920.txt", "r"),
					fopen("yob1930.txt", "r"),
					fopen("yob1940.txt", "r"),
					fopen("yob1950.txt", "r"),
					fopen("yob1960.txt", "r"),
					fopen("yob1970.txt", "r"),
					fopen("yob1980.txt", "r"),
					fopen("yob1990.txt", "r"),
					fopen("yob2000.txt", "r"),
					fopen("yob2010.txt", "r")
	};

	// Cycle through each file, reading off the first 100 names.
	int i, j;
	for(i = 0; i < NUM_FILES; i++) {
		for(j = 0; j < FILE_NAMES; j++) {
			// Reads one name from the current file.
			readOneInput(files[i], i, j, names, rank, blank);
		}
		// Close the current file when finished.
		fclose(files[i]);
	}
}

/*
 * sort() function is used to sort the list of names and the
 * corresponding ranks so that they are alphabetized. This sort
 * function uses the bubblesort algorithm to do its sorting.
 */ 
void sort(char **names, int **rank, int trueSize) {
	// Declare a temporary name.
	char *temp = (char*) malloc(NAME_LENGTH*sizeof(char));
	// Declare a temporary array of ranks.
	int *tempRank = (int*) malloc(NUM_FILES*sizeof(int));

	int k, l;
	// Use bubblesort algorithm to sort the names.
    for (k = 0; k < (trueSize - 1); ++k) {
        for (l = 0; l < (trueSize - 1 - k); ++l) {
        	// If the current is bigger than the next, rearrange.
        	if(strcmp(*(names+l), *(names+l+1)) > 0) {
        		// Rearrange the name.
                temp = *(names+l+1);
            	*(names+l+1) = *(names+l);
                *(names+l) = temp;

                // Rearrange the associated ranks.
                tempRank = *(rank+l+1);
                *(rank+l+1) = *(rank+l);
                *(rank+l) = tempRank;
            }
        }
    }
}

/*
 * printRanks() function is used to print out the 10 ranks associated
 * with the current name specified by the integer i.
 */
void printRanks(FILE *output, int** rank, int i) {
	int j;
	for(j = 0; j < NUM_FILES; j++) {
		// If rank is zero, print out a blank space.
		// Otherwise, print the rank.
		if(*(*(rank + i) + j) == 0) {
    		fprintf(output, ",");
    	} else {
    		fprintf(output, ",%d", *(*(rank + i) + j));
    	}
    }
}

/*
 * createOutput() function is used to create the output of the final
 * list so that you see a list of alphabetized names with their
 * associated ranks in columns next to them. This function also uses
 * the printRanks() function to print out the ranks associated with
 * the current name.
 */
void createOutput(char **names, int **rank, int trueSize) {
	// Declare output file "summary.csv".
    FILE *output = fopen("summary.csv", "w");
    // Print out the header of the csv.
    fprintf(output, "Name,1920,1930,1940,1950,1960,1970,1980"
    	",1990,2000,2010\n");
    int i;
    // Run through every name up until we run out of names.
    // Use trueSize so we don't print a lot of blank spaces.
    for(i = 0; i < trueSize; i++) {
    	// Print out the current name.
    	fprintf(output, "%s", *(names + i));
    	// Print out the ranks associated with name.
    	printRanks(output, rank, i);
    	// Print out a new line so its not all on the same.
    	fprintf(output, "\n");
    }
    // Close the file.
    fclose(output);
}

/*
 * main() function runs the entire program. This program is meant to
 * take in a list of popular birth names that are already listed in
 * order of which was the most popular that year and then read in
 * each of those lists, alphabetize it into one big list, and then 
 * print out the list with the ordered rank of names for each year.
 */
int main(void) {
	// Declare arrays that hold every name and rank.
	char **names = (char**) malloc(MAX_NAMES*sizeof(char*));
	int  **rank  = (int** ) malloc(MAX_NAMES*sizeof(int* ));
	
	int i;
	// Allocate enough memory for every name and rank.
	for(i = 0; i < MAX_NAMES; i++) {
		*(names + i) = (char*) malloc(NAME_LENGTH*sizeof(char));
		*(rank  + i) = (int* ) malloc(NUM_FILES  *sizeof(int ));
	}

	// Use this variable for calculating real size of names array.
	int blank = 0;

	// Read every input file and generate name list and rank.
	readInputFiles(names, rank, &blank);

	// The actual size of names array with none repeated.
	int trueSize = MAX_NAMES-blank;

	// Sort the names and ranks using bubblesort algorithm.
	sort(names, rank, trueSize);

	// Create the output file and write to it.
    createOutput(names, rank, trueSize);

    // Successful termination.
	return 0;
}