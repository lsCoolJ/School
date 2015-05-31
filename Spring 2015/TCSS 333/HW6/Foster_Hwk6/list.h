/*
 * Homework 6 written by Ben Foster
 * Instructor: John Mayer
 * Date: May 29, 2015
 */
#ifndef LIST_HEADER
#define LIST_HEADER

typedef struct Node Node;
typedef struct List List;

struct Node {
	Node *next; // Next node in the list
	void *startAddr; // Start address of block
	int size; // In Bytes
	int isFree; // 0 for no, 1 for yes
};

struct List {
	void *front; // beginning of the heap
	int size; // Size of heap
	int numBlocks; // Number of allocated blocks
};

Node *createNode(Node *next, int size, void *addr, int isFree) {
	Node *myNode = (Node*) malloc(sizeof(Node));

	myNode->next = next;
	myNode->startAddr = addr;
	myNode->size = size;
	myNode->isFree = isFree;

	return myNode;
}

List *createList(int size, void *addr) {
	List *myList = (List*) malloc(sizeof(List));

	myList->front = createNode(NULL, size, &addr, 1);
	myList->size = size;
	myList->numBlocks = 1;

	return myList;
}



#endif
