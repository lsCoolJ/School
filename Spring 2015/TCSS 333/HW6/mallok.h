#ifndef MALLOK_HEADER
#define MALLOK_HEADER

void create_pool(int size);

void *my_malloc(int size);

void my_free(void *block);

#endif