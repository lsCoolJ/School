#include <stdio.h>
#include <stdlib.h>
#include "mallok.h"
#include "list.h"

#define FREE 1
#define NOT_FREE 0
static List *heap;

void create_pool(int size) {
	// Allocate the proper size for the private heap
	heap = createList(size);
}

void *my_malloc(int size) {
	Node *curr = (Node*) malloc(sizeof(Node));
	Node *myNode = (Node*) malloc(sizeof(Node))

	curr = heap->front;
	while(curr->next != NULL && curr->size < size && !(curr->isFree)) {
		curr = curr->next;
	}
	if(curr->size > size && curr->isFree == 1) {
		myNode = createNode((curr->size - size), (curr->startAddr + size), FREE);
		myNode->next = curr->next;
		curr->next = myNode;
		curr->size = size;
		curr->isFree = NOT_FREE;
		return curr;
	} else {
		return NULL;
	}
}

void my_free(void *block) {
	Node *curr = (Node*) malloc(sizeof(Node));

	if(block->isFree == FREE) {
		printf("Block is already free.\n");
	} else {
		block->isFree = FREE;
	}

	curr = heap->front;
	while(curr->next != NULL) {
		if(curr->isFree && curr->next->isFree) {
			curr->size += curr->next->size;
			curr->next = curr->next->next;
		} else {
			curr = curr->next;
		}
	}
}


/*
 * To create a pool:
 * 		Create a list with one node
 *		The first node will be the same size as the heap
 *		We will be changing the global variable since create_pool 
 *		  doesn't return anything
 *
 * To create a block:
 *		Iterate through list to find first Node that is free with
 *		  enough space to allocate memory.
 *		Use malloc to actually allocate the space and then create
 *		  two nodes, one with the allocated space, and another that
 *		  is free. These must be next to each other in the list.
 */
