/*
 * Homework 6 written by Ben Foster
 * Instructor: John Mayer
 * Date: May 29, 2015
 */

#include <stdio.h>
#include <stdlib.h>
#include "mallok.h"
//#include "list.h"

void test1() {
	create_pool(1000);

	int i = 0;
	while(my_malloc(10) != NULL) i++;
	printf("Number of allocated blocks: %d\n", i);
	//print_pool();
}

void test2() {
	create_pool(1000);

	void *blocks[5];

	int i,j;
	// Allocate 5 blocks of memory.
	for(i = 0; i < 5; i++) {
		blocks[i] = my_malloc(200);
	}
	//print_pool();
	// Free all 5 blocks
	for(j = 0; j < 5; j++) {
		my_free(blocks[j]);
	}
}

void test3() {
	create_pool(1000);

	void *blocks[5];

	int i;
	for(i = 0; i < 5; i++) {
		blocks[i] = my_malloc(200);
	}

	my_free(blocks[2]);
	//print_pool();

	my_malloc(210);
	//print_pool();

	my_malloc(150);
	//print_pool();

	my_malloc(60);
	//print_pool();

	my_malloc(50);
	//print_pool();
}

void test4() {
	create_pool(1000);

	char *blocks1;
	char *blocks2;
	char *blocks3;
	char *blocks4;
	char *blocks5;

	int num = 10;

	blocks1 = (char*) my_malloc(num);
	blocks2 = (char*) my_malloc(num);
	blocks3 = (char*) my_malloc(num);
	blocks4 = (char*) my_malloc(num);
	blocks5 = (char*) my_malloc(num);

	//blocks1[0] = 'A';

	int i;
	for(i = 0; i < num; i++) {
		blocks1[i] = 'A';
		blocks2[i] = 'B';
		blocks3[i] = 'C';
		blocks4[i] = 'D';
		blocks5[i] = 'E';
	}
	blocks1[num] = '\0';

	blocks2[num] = '\0';

	blocks3[num] = '\0';

	blocks4[num] = '\0';

	blocks5[num] = '\0';

	printf("%s\n", blocks1);
	printf("%s\n", blocks2);
	printf("%s\n", blocks3);
	printf("%s\n", blocks4);
	printf("%s\n", blocks5);
}

void test5() {
	create_pool(1000);

	void *blocks[10];

	blocks[0] = my_malloc(1000);

	my_free(blocks[0]);

	int i;
	for(i = 0; i < 4; i++) {
		blocks[i] = my_malloc(250);
	}
	for(i = 0; i < 4; i++) {
		my_free(blocks[i]);
	}

	for(i = 0; i < 10; i++) {
		blocks[i] = my_malloc(100);
	}
	for(i = 0; i < 10; i++) {
		my_free(blocks[i]);
	}
}

int main(void) {
	
	// Create a pool of 1000 bytes. Count how many times you can
	// successfully request a block of size 10.
	//test1();

	// Create a pool of 1000 bytes. Make 5 requests for blocks of 200
	// bytes. Free all 5 blocks. Request this request/free pattern
	// several times to make sure you can reuse blocks after they are
	// returned.
	// int i;
	// for(i = 0; i < 5; i++) {
	// 	test2();
	// }

	// Create a pool of 1000 bytes.
	// 		Make 5 requests for blocks of 200 bytes.
	//		Free the middle block.
	//		Request a block of 210 bytes (it should fail)
	//		Request a block of 150 bytes (it should succeed)
	//		Request a block of 60 bytes (it should fail)
	//		Request a block of 50 bytes (it should succeed)
	//		etc.
	//test3();

	// Create a pool of 1000 bytes.
	//		Request 5 blocks of 200 bytes.
	//		Fill the first block with the letter 'A', the second block
	//		with 'B', etc.
	//		Verify that the values stored in each block are still 
	//		there. (is the first block full of A's, the second block
	//		full of B's, etc.)
	test4();

	// Create a pool of 1000 bytes.
	//		Request and return a block of 1000 bytes
	//		Request and return four blocks of 250 bytes
	//		Request and return ten blocks of 100 bytes
	//test5();

	return 0;
}
