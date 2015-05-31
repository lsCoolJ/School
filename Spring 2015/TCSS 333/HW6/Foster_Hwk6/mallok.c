/*
 * Homework 6 written by Ben Foster
 * Instructor: John Mayer
 * Date: May 29, 2015
 */
#include <stdio.h>
#include <stdlib.h>
#include "mallok.h"
#include "list.h"

#define FREE 1
#define NOT_FREE 0
static List *heap;

void create_pool(int size) {
	// Allocate the proper size for the private heap
	heap = createList(size, &heap);
	printf("create_pool of size: %d\n", size);
}

void *my_malloc(int size) {
	Node *curr = (Node*) malloc(sizeof(Node));

	curr = heap->front;
	while(curr != NULL) {
		if((curr->isFree) == FREE) {
			if((curr->size) == size) {
				curr->isFree = NOT_FREE;
				printf("Memory Allocated.\n");
				return curr->startAddr;
			} else if(curr->size > size) {
				curr->next = createNode((curr->next), (curr->size - size), (curr->startAddr + size), FREE);
				curr->size = size;
				curr->isFree = NOT_FREE;
				heap->numBlocks += 1;
				printf("Memory Allocated.\n");
				return curr->startAddr;
			}
		}
		curr = curr->next;
	}
	printf("Size: %d too large to allocate.\n", size);
	return NULL;
}

void my_free(void *block) {
	//Node *thisBlock = block;
	Node *curr = (Node*) malloc(sizeof(Node));

	curr = heap->front;
	while(curr != NULL) {
		if(curr->startAddr == block) {
			curr->isFree = FREE;
			printf("Block Freed.\n");
		}
		curr = curr->next;
	}

	curr = heap->front;
	while(curr->next != NULL) {
		if(curr->isFree && curr->next->isFree) {
			curr->size += curr->next->size;
			curr->next = curr->next->next;
			heap->numBlocks = heap->numBlocks - 1;
		} else {
			curr = curr->next;
		}
	}
}

/*
 * print_pool() function used for testing purposes only.
 */
void print_pool() {
	Node *curr = (Node*) malloc(sizeof(Node));
	curr = heap->front;
	int i = 1;
	while(curr != NULL) {
		printf("Block: %d || curr->size: %d || isFree: %d || Address: %p\n", i, curr->size, curr->isFree, curr->startAddr);
		i++;
		curr = curr->next;
	}
}
