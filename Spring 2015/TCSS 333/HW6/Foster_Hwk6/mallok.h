/*
 * Homework 6 written by Ben Foster
 * Instructor: John Mayer
 * Date: May 29, 2015
 */
#ifndef MALLOK_HEADER
#define MALLOK_HEADER

void create_pool(int size);

void *my_malloc(int size);

void my_free(void *block);

void print_pool();

#endif
