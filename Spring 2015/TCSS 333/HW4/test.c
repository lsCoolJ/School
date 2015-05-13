#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(void) {

	FILE *input = fopen("hw4input.txt", "r");


	char *name = (char*) malloc(29*sizeof(char));
	char *itemName = (char*) malloc(29*sizeof(char));
	char *itemPrice = (char*) malloc(7*sizeof(char));
	int numItem;
	while(fscanf(input, "%s %d %s %*c%s", name, &numItem, itemName, itemPrice) != EOF) {
		printf("%s %d %s $%.2f\n", name, numItem, itemName, atof(itemPrice));
	}
	// for(int i = 0; i < 200; i++) {
	// 	fscanf(input, "%s %d %s %*c%s", name, &numItem, itemName, itemPrice);
	// 	printf("%s %d %s $%.2f\n", name, numItem, itemName, atof(itemPrice));
	// }

	return 0;
}