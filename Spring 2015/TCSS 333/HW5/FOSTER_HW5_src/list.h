/*
 * Homework 5:
 * Written by Ben Foster
 * Instructor: John Mayer
 *
 * File: list
 * Type: .h
 * functions: createList(), createNode(), calculateDifferences(),
 *   correctWord(), insertWords(), populateList(), swapNodes(), 
 *   sortList(), printout(), printToFile()
 * defines: LIST_H = "", LITTLE_REGIMENT = "LittleRegiment.txt",
 *   RED_BADGE = "RedBadge.txt", MAX_WORD = 40.
*/

// If LIST_H is not defined, then compile this header file. This
// little bit of code is only used to prevent this header file
// from compiling twice and causing errors.
#ifndef LIST_H
#define LIST_H

// Define the first text file
#define LITTLE_REGIMENT "LittleRegiment.txt"
// Define the second text file
#define RED_BADGE "RedBadge.txt"
// Each word can only be a max of 40 characters.
#define MAX_WORD 40

// We should define the two types for a linked list.
typedef struct Node Node;
typedef struct List List;

// Node structure, contains:
struct Node {
	Node *next; // A pointer to the next node (singly linked list)
	char *word; // A character pointer for a word
	int regiCount; // A count of how many times it appeared in
						// the first file
	int badgCount; // A count of how mnay times it appeared in
						// the second file
	int difference; // The difference between the two counts
};

// List structure, contains:
struct List {
	Node *front; // Pointer to the front of the list.
	int totalWords; // Total number of Nodes in this list.
};

// The following functions are defined in the list.c file
// The descriptions of each function are repeats of what is
//   in the list.c file.

/*
 * createList() function allocates enough memory for a list,
 * sets the front Node pointer to NULL, sets the current total
 * number of words to zero, and returns a pointer to the List.
 */
List *createList();

/*
 * calculateDifferences() function takes in a pointer to a List
 * and then calculates all the differences between the two word
 * counts in each node. This function is used by the main()
 * function.
 */
void calculateDifferences(List *myList);

/*
 * insertWords() function takes in a file pointer, a list pointer
 * and an integer describing which txt file is being read in. This
 * function will read the given text file and insert the words
 * into a linked list, making each node a word that contains
 * a count of how many times it appeared in each text file. The
 * difference in each node is zero at this point. This funciton is
 * called by the main() function.
 */
void insertWords(FILE *input, List *myList, int whichBook);

/*
 * The sortList() function takes in a pointer to a list and then
 * continues to sort the list based off of the difference parameter
 * in each word from highest to lowest. This function uses the
 * bubble sort method is called by
 * the main() function.
 */
void sortList(List *myList);

/*
 * The printout() function takes in a list pointer and will print out
 * the first 50 Nodes in the list including its spot in the list, the
 * word in the node, the number of times it appeared in each file,
 * and the difference between the number of times it appeared in each
 * file. This function is called by the main() funciton.
 */
void printout(List *myList);

/*
 * The printToFile() function is not necessary for this programming
 * assignment. It is merely here in case a user wanted to print out
 * to a text file rather than print to console.
 */
void printToFile(List *myList);

#endif
