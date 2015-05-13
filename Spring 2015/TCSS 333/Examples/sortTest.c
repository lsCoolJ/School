#include <stdio.h>
#include <stdlib.h>

int main(void) {

	int arr[8] = {8, 6, 10, 3, 1, 2, 5, 4};

	printf("Array before: ");
    for(int i = 0; i < 8; i++) {
    	printf("%d, ", arr[i]);
    }
    printf("\n");

	int temp;
    for (int k = 0; k < (8 - 1); ++k) {
        for (int l = 0; l < (8 - 1 - k); ++l) {
            if (arr[l] > arr[l+1]) {
                temp = arr[l+1];
                arr[l+1] = arr[l];
                arr[l] = temp;
            }
        }
    }

    printf("Array after: ");
    for(int i = 0; i < 8; i++) {
    	printf("%d, ", arr[i]);
    }
    printf("\n");



    int r = 0;
    // int **array = (int**) malloc(5*sizeof(int));
    // for(int q = 0; q < 5; q++) {
    // 	array[q] = (int*) malloc(5*sizeof(int));
    // }
    int **array = (int**) malloc(5*sizeof(int*));
    for(int i = 0; i < 5; i++) {
    	*(array + i) = (int*) malloc(4*sizeof(int));
    }

    for(int i = 0; i < 5; i++) {
    	for(int j = 0; j < 4; j++) {
    		*(*(array+i) + j) = r;
    		r++;	
    	}
    }

    printf("SECOND ARRAY: ");
    for(int b = 0; b < 5; b++) {
    	for(int c = 0; c < 4; c++) {
    		printf("%d, ", *(*(array+b)+c));
    	}
    	
    }
    printf("\n");

	return 0;
}

//////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////


// /*
//  *
// */

// #include <stdio.h>
// #include <stdlib.h>
// #include <string.h>

// #define NAME_LENGTH 15
// #define NUM_FILES 10
// #define FILE_NAMES 100
// #define MAX_NAMES 1000

// void processName(char *str1, char **names, int **rank, int *flag,
//  int *blank, int i, int j, int n) {
// 	if(strcmp(str1, *(names + n)) == 0) {
// 		*(*(rank + n) + i) = j+1;
// 		*flag = 1;
// 		*(blank) += 1;
// 	}
// }

// void readOneInput(FILE *inFile, int i, int j, char **names, int **rank,
//  int *blank) {
// 	char *str1 = (char*) malloc(NAME_LENGTH*sizeof(char));

// 	// Read in the name, skip the gender, number and commas.
// 	fscanf(inFile, " %[^ ,]%*c%*c%*c%*d", str1);
// 	// Compare names to see if there are repeats
// 	int flag = 0;
// 	for(int n = 0; n < MAX_NAMES; n++) {
// 		processName(str1, names, rank, &flag, blank, i, j, n);
// 		// if(strcmp(str1, *(names + n)) == 0) {
// 		// 	*(*(rank + n) + i) = j+1;
// 		// 	flag = 1;
// 		// 	*blank++;
// 		// } 
// 	}
// 	if(flag == 0) {
// 		strcpy(*(names +(i*FILE_NAMES)+j-*blank), str1);
// 		*(*(rank + (i*FILE_NAMES)+j-*blank) + i) = j+1;
// 	}
// }

// void readInputFiles(char **names, int **rank, int *blank) {
// 	FILE *files[] = { fopen("yob1920.txt", "r"),
// 					fopen("yob1930.txt", "r"),
// 					fopen("yob1940.txt", "r"),
// 					fopen("yob1950.txt", "r"),
// 					fopen("yob1960.txt", "r"),
// 					fopen("yob1970.txt", "r"),
// 					fopen("yob1980.txt", "r"),
// 					fopen("yob1990.txt", "r"),
// 					fopen("yob2000.txt", "r"),
// 					fopen("yob2010.txt", "r")
// 	};

// 	for(int i = 0; i < NUM_FILES; i++) {
// 		for(int j = 0; j < FILE_NAMES; j++) {

// 			readOneInput(files[i], i, j, names, rank, blank); ///////////////////////////////////////////////////
// 			// char *str1 = (char*) malloc(NAME_LENGTH*sizeof(char));

// 			// // Read in the name, skip the gender, number and commas.
// 			// fscanf(files[i], " %[^ ,]%*c%*c%*c%*d", str1);
// 			// // Compare names to see if there are repeats
// 			// int flag = 0;
// 			// for(int n = 0; n < MAX_NAMES; n++) {
// 			// 	if(strcmp(str1, *(names + n)) == 0) {
// 			// 		*(*(rank + n) + i) = j+1;
// 			// 		flag = 1;
// 			// 		*blank++;
// 			// 	} 
// 			// }
// 			// if(flag == 0) {
// 			// 	strcpy(*(names +(i*FILE_NAMES)+j-*blank), str1);
// 			// 	*(*(rank + (i*FILE_NAMES)+j-*blank) + i) = j+1;
// 			// }
// 		}
// 		fclose(files[i]);
// 	}
// }

// void sort(char **names, int **rank, int trueSize) {
// 	char *temp = (char*) malloc(NAME_LENGTH*sizeof(char));
// 	int *tempRank = (int*) malloc(NUM_FILES*sizeof(int));
//     for (int k = 0; k < (trueSize - 1); ++k) {
//         for (int l = 0; l < (trueSize - 1 - k); ++l) {
//         	if(strcmp(*(names+l), *(names+l+1)) > 0) {
//                 temp = *(names+l+1);
//             	*(names+l+1) = *(names+l);
//                 *(names+l) = temp;

//                 tempRank = *(rank+l+1);
//                 *(rank+l+1) = *(rank+l);
//                 *(rank+l) = tempRank;
//             }
//         }
//     }
// }

// void createOutput(char **names, int **rank, int trueSize) {
//     FILE *output = fopen("summary.csv", "w");
//     fprintf(output, "Name,1920,1930,1940,1950,1960,1970,1980,1990,2000,2010\n");
//     for(int i = 0; i < trueSize; i++) {
//     	fprintf(output, "%s", *(names + i));
//     	for(int j = 0; j < NUM_FILES; j++) {
//     		if(*(*(rank + i) + j) == 0) {
//     			fprintf(output, ",");
//     		} else {
//     			fprintf(output, ",%d", *(*(rank + i) + j));
//     		}
//     	}
//     	fprintf(output, "\n");
//     }
//     fclose(output);
// }

// int main(void) {

// 	// FILE *files[] = { fopen("yob1920.txt", "r"),
// 	// 				fopen("yob1930.txt", "r"),
// 	// 				fopen("yob1940.txt", "r"),
// 	// 				fopen("yob1950.txt", "r"),
// 	// 				fopen("yob1960.txt", "r"),
// 	// 				fopen("yob1970.txt", "r"),
// 	// 				fopen("yob1980.txt", "r"),
// 	// 				fopen("yob1990.txt", "r"),
// 	// 				fopen("yob2000.txt", "r"),
// 	// 				fopen("yob2010.txt", "r")
// 	// };

// 	// Declare arrays that hold every name and rank.
// 	//char *names[MAX_NAMES];
// 	char **names = (char**) malloc(MAX_NAMES*sizeof(char*));
// 	//int rank[MAX_NAMES][NUM_FILES];
// 	int **rank = (int**) malloc(MAX_NAMES*sizeof(int*));

// 	// Allocate enough memory for every name
// 	for(int i = 0; i < MAX_NAMES; i++) {
// 		*(names + i) = (char*) malloc(NAME_LENGTH*sizeof(char));
// 		*(rank  + i) = (int* ) malloc(NUM_FILES  *sizeof(int ));
// 	}

// 	int blank = 0;

// 	readInputFiles(names, rank, &blank); ///////////////////////////////////////////////////
// 	// for(int i = 0; i < NUM_FILES; i++) {
// 	// 	for(int j = 0; j < FILE_NAMES; j++) {

// 	// 		//readOneInput(); ///////////////////////////////////////////////////
// 	// 		char *str1 = (char*) malloc(NAME_LENGTH*sizeof(char));

// 	// 		// Read in the name, skip the gender, number and commas.
// 	// 		fscanf(files[i], " %[^ ,]%*c%*c%*c%*d", str1);
// 	// 		// Compare names to see if there are repeats
// 	// 		int flag = 0;
// 	// 		for(int n = 0; n < MAX_NAMES; n++) {
// 	// 			processName(str1, names, rank, &flag, &blank, i, j, n);
// 	// 			// if(strcmp(str1, *(names + n)) == 0) {
// 	// 			// 	*(*(rank + n) + i) = j+1;
// 	// 			// 	flag = 1;
// 	// 			// 	blank++;
// 	// 			// } 
// 	// 		}
// 	// 		if(flag == 0) {
// 	// 			strcpy(*(names +(i*FILE_NAMES)+j-blank), str1);
// 	// 			*(*(rank + (i*FILE_NAMES)+j-blank) + i) = j+1;
// 	// 		}
// 	// 	}
// 	// 	fclose(files[i]);
// 	// }
// 	int trueSize = MAX_NAMES-blank;
// 	sort(names, rank, trueSize); ////////////////////////////////////////////////////////////////
// 	////////// Sort the names and ranks using the bubblesort algorithm
// 	// int trueSize = MAX_NAMES-blank;
// 	// char *temp = (char*) malloc(NAME_LENGTH*sizeof(char));
// 	// int *tempRank = (int*) malloc(NUM_FILES*sizeof(int));
//  //    for (int k = 0; k < (trueSize - 1); ++k) {
//  //        for (int l = 0; l < (trueSize - 1 - k); ++l) {
//  //        	if(strcmp(*(names+l), *(names+l+1)) > 0) {
//  //                temp = *(names+l+1);
//  //            	*(names+l+1) = *(names+l);
//  //                *(names+l) = temp;

//  //                tempRank = *(rank+l+1);
//  //                *(rank+l+1) = *(rank+l);
//  //                *(rank+l) = tempRank;
//  //            }
//  //        }
//  //    }

// 	// for(int i = 0; i < MAX_NAMES; i++) {
// 	// 	for(int j = 0; j < NUM_FILES; j++) {
// 	// 		if(*(*(rank + i) + j) > 100 || *(*(rank + i) + j) < 0) {
// 	// 			*(*(rank + i) + j) = 0;
// 	// 		}
// 	// 	}
		
// 	// }

//     createOutput(names, rank, trueSize); /////////////////////////////////////////////////////////
//     ///////// WRITE OUT TO A FILE
//     // FILE *output = fopen("summary.csv", "w");
//     // fprintf(output, "Name,1920,1930,1940,1950,1960,1970,1980,1990,2000,2010\n");
//     // for(int i = 0; i < trueSize; i++) {
//     // 	fprintf(output, "%s", *(names + i));
//     // 	for(int j = 0; j < NUM_FILES; j++) {
//     // 		if(*(*(rank + i) + j) == 0) {
//     // 			fprintf(output, ",");
//     // 		} else {
//     // 			fprintf(output, ",%d", *(*(rank + i) + j));
//     // 		}
//     // 	}
//     // 	fprintf(output, "\n");
//     // }
//     // fclose(output);


// 	// int w = 1;
//  //    for(int i = 0; i < trueSize; i++) {
//  //    	printf("%d: %12.12s ||", w, *(names + i));
//  //    	for(int j = 0; j < NUM_FILES; j++) {
//  //    		printf("  %d||", *(*(rank + i) + j));
//  //    	}
//  //    	w++;
//  //    	printf("\n");
//  //    }

// 	return 0;
// }