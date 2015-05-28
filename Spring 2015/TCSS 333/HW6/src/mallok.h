#ifndef MALLOK_HEADER
#define MALLOK_HEADER

typedef struct Node Node;
typedef struct List List;

struct Node {
	void *startAddr; // Start address of block
	int size; // In Bytes
	int isFree; // 0 for no, 1 for yes
};

struct List {
	void *blockAddr; // start address of block
	int size; // Size of heap
	int numNodes; // Number of allocated blocks
};

void create_pool(int size);

void *my_malloc(int size);

void my_free(void *block);

#endif