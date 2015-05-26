/*
 * Homework 5:
 * Written by Ben Foster
 * Instructor: John Mayer
 *
 * File: list
 * Type: .c
 * functions: createList(), createNode(), calculateDifferences(),
 *   correctWord(), insertWords(), populateList(), swapNodes(), 
 *   sortList(), printout(), printToFile()
 * defines: none
*/

// Include necessary header files.
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>
#include "list.h"

/*
 * createList() function allocates enough memory for a list,
 * sets the front Node pointer to NULL, sets the current total
 * number of words to zero, and returns a pointer to the List.
 */
List *createList() {
	List *myList = (List*) malloc(sizeof(List));

	myList->front = NULL;
	myList->totalWords = 0;

	return myList;
}

/*
 * createNode() function allocates enough memory for a Node,
 * sets the next Node pointer to NULL, allocates enough memory
 * for the word in the node, sets that word equal to the one
 * passed in, and then sets the counts based on which book
 * the word came from. The function then returns a pointer to
 * the node created.
 */
Node *createNode(char *word, int whichBook) {
	Node *myNode = (Node*) malloc(sizeof(Node));

	myNode->next = NULL;
	myNode->word = (char*) malloc(MAX_WORD*sizeof(char));

	strcpy(myNode->word, word);
	if(whichBook == 0) {
		// Little Regiment
		myNode->regiCount = 1;
		myNode->badgCount = 0;
	} else {
		// Red Badge
		myNode->regiCount = 0;
		myNode->badgCount = 1;
	}
	myNode->difference = 0;

	return myNode;
}

/*
 * calculateDifferences() function takes in a pointer to a List
 * and then calculates all the differences between the two word
 * counts in each node. This function is used by the main()
 * function.
 */
void calculateDifferences(List *myList) {
	Node *curr = myList->front;
	// Iterate through each Node.
	while(curr != NULL) {
		curr->difference = abs(curr->regiCount - curr->badgCount);
		curr = curr->next;
	}
}

/*
 * correctWord() function takes in a character pointer to a char
 * and then proceeds to "correct" the word by converting each
 * character to lowercase and getting rid of any special characters
 * that aren't an apostrophe or hyphen. This function is used by
 * the insertWords() function.
 */
void correctWord(char *word) {
	int i;
	// Convert to lower case
	for(i = 0; i < strlen(word); i++) {
		// If the character is Uppercase
		if(word[i] > 0x40 && word[i] < 0x5b) {
			// Convert to lowercase
			word[i] = word[i] + 32;
		}
	}

	// Get rid of special characters
	// Set the delimiters for strtok().
	const char delims[29] = "!@#$^&*/?><.,;:[]{}|_+=`~%\"\\";
	char *token;
	char newWord[strlen(word)+1];
	token = strtok(word, delims);
	int index = 0;
	// Tokenizing the string breaks it apart. to avoid this,
	// I use a separate character string and build the word
	// in that and then set the original word equal to it.
	while(token != NULL) {
		strcpy(&newWord[index], token);
		index += strlen(token);
		token = strtok(NULL, delims);
	}
	// Set original word to new word
	strcpy(word, newWord);
}

/*
 * insertWords() function takes in a file pointer, a list pointer
 * and an integer describing which txt file is being read in. This
 * function will read the given text file and insert the words
 * into a linked list, making each node a word that contains
 * a count of how many times it appeared in each text file. The
 * difference in each node is zero at this point. This funciton is
 * called by the main() function.
 */
void insertWords(FILE *input, List *myList, int whichBook) {
	// Make a current node to use
	Node *curr = (Node*) malloc(sizeof(Node));
	// Make another node for inserting at the front
	Node *newNode = (Node*) malloc(sizeof(Node));
	// Make a character pointer for the word.
	char *word = (char*) malloc(MAX_WORD*sizeof(char));
	// Read in the file word by word
	while(fscanf(input, "%s", word) != EOF) {
		// "correct" the word
		correctWord(word);
		
		// If the list is empty, insert the first word
		if(myList->front == NULL) {
			curr = createNode(word, whichBook);
			myList->front = curr;
			myList->totalWords += 1;
		// If list is not empty,
		} else {
			// Check to see if the word already exists
			int found = 0;
			// Begin looking at the front
			curr = myList->front;
			// Iterate through list
			while(curr != NULL) {
				if(strcmp(curr->word, word) == 0) {
					if(whichBook == 0) {
						curr->regiCount += 1;
					} else {
						curr->badgCount += 1;
					}
					found = 1;
					break;
				}
				curr = curr->next;
			}
			// If the word wasn't found, insert at front
			if (found == 0) {
				newNode = createNode(word, whichBook);
				newNode->next = myList->front;
				myList->front = newNode;
				myList->totalWords += 1;
			}
		}
	}
}

/*
 * The swapNodes() function takes in pointers to two nodes and then
 * swaps the data that is in them rather than swapping the pointers.
 * This function is called by the sortList() funciton.
 */
void swapNodes(Node *a, Node *b) {
	Node *temp = (Node*) malloc(sizeof(Node));

	// Create a temp
	temp->word = a->word;
	temp->regiCount = a->regiCount;
	temp->badgCount = a->badgCount;
	temp->difference = a->difference;
	
	// Swap A and B
	a->word = b->word;
	a->regiCount = b->regiCount;
	a->badgCount = b->badgCount;
	a->difference = b->difference;


	// Swap B and Temp
	b->word = temp->word;
	b->regiCount = temp->regiCount;
	b->badgCount = temp->badgCount;
	b->difference = temp->difference;
}

/*
 * The sortList() function takes in a pointer to a list and then
 * continues to sort the list based off of the difference parameter
 * in each word from highest to lowest. This function uses the
 * bubble sort method is called by
 * the main() function.
 */
void sortList(List *myList) {
	Node *currA = myList->front;
	Node *currB;
	int i;
	for(i = 0; i < myList->totalWords; i++) {
		currB = currA;
		int j;
		for(j = 0; j < myList->totalWords - i; j++){
			if(currA->difference < currB->difference) {
				// Swap Nodes
				swapNodes(currA, currB);
			}
			currB = currB->next;
		}
		currA = currA->next;
	}
}

/*
 * The printout() function takes in a list pointer and will print out
 * the first 50 Nodes in the list including its spot in the list, the
 * word in the node, the number of times it appeared in each file,
 * and the difference between the number of times it appeared in each
 * file. This function is called by the main() funciton.
 */
void printout(List *myList) {
	Node *curr = myList->front;
	int i;
	for(i = 1; i < 51; i++) {
		// Print the rank and the word
		printf("[%d]: Word: %s || ", i, curr->word);
		// Print the number of times it appeared in first file
		printf("Red Badge: %d || ", curr->badgCount);
		// Print the number of times it appeared in second file
		printf("Little Regiment: %d || ", curr->regiCount);
		// Print the difference between the two
		printf("Difference: %d\n", curr->difference);
		curr = curr->next;
	}
}

/*
 * The printToFile() function is not necessary for this programming
 * assignment. It is merely here in case a user wanted to print out
 * to a text file rather than print to console.
 */
void printToFile(List *myList) {
	FILE *output = fopen("out/Sorted_Output.txt", "w");
	Node *curr = myList->front;
	int i;
	for(i = 1; i < 51; i++) {
		fprintf(output, "[%d]: Word: %s || ", i, curr->word);
		fprintf(output, "Red Badge: %d || ", curr->badgCount);
		fprintf(output, "Little Regiment: %d || ", curr->regiCount);
		fprintf(output, "Difference: %d\n", curr->difference);
		curr = curr->next;
	}
}
