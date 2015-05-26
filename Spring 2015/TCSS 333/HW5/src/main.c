/*
 * Homework 5:
 * Written by Ben Foster
 * Instructor: John Mayer
 *
 * File: main
 * Type: .c
 * functions: main()
 * defines: none
*/

// Include necessary header files.
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>
#include "list.h"

/*
 * main() function runs the entire program. The purpose of this
 * program is to read in two text files, make a singly-linked list
 * of all the words in both, and include how many times every word
 * appeared in each file and also the difference between the two.
 * The program is then supposed to sort the list so that the words
 * with the biggest difference appear first, and then the program
 * prints the first 50 words with the biggest differences.
 */
int main(void) {

	// Create the list to populate.
	List *myList = createList();

	// Create file pointers of files being read in
	FILE *badge = fopen(RED_BADGE, "r");
	FILE *regiment = fopen(LITTLE_REGIMENT, "r");

	// Read files. 
	// 0 = little regiment, 1 = red badge
	insertWords(badge, myList, 1);
	insertWords(regiment, myList, 0);
	
	// populate differences
	calculateDifferences(myList);

	// Sort the list.
	sortList(myList);

	// Printout the first 50 words.
	printout(myList);

	// This method is just in case someone wanted to print to a
	// text file rather than the console.
	printToFile(myList);

	return 0;
}
