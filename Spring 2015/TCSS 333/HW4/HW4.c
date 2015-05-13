/*
 * Homework 4: Structures, Arrays, and File IO
 * Written by Ben Foster
 * Instructor: John Mayer
 * Due Date: May 1, 2015
 */

// Include necessary header files.
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

// Maximum number of Customers possible.
#define MAX_CUSTOMERS 20
// Maximum number of Items per Customer possible.
#define MAX_ITEMS 10
// Maximum length of a name possible.
#define MAX_NAME_LENGTH 29
// Max size of the price of an item including decimal.
#define ITEM_PRICE 15

/*
 * item Structure contains a character pointer that represents
 * a name, an integer that represents the number of items purchased,
 * a float that reperesents the price of each individual item and
 * another float that represents the price times the number of items.
 */
struct item {
	// Name of the item.
	char *itemName;
	// Number of that item.
	int numItem;
	// Price of that item.
	float price;
	// Total value: price * numItem.
	float itemValue;
};
/*
 * customer Structure contains a character pointer that represents
 * the name of the customer, an integer that represents which item
 * we are currently on and eventually the total number of different
 * items each customer has, a float to represent the total order of
 * the customer and pointer to an item that represents an array of
 * items.
 */
struct customer {
	// Name of the customer.
	char *name;
	// Numer of different items customer has.
	int itemIndex;
	// Total customer spent.
	float totalOrder;
	// Array of different customer bought.
	struct item *items;
};

/*
 * readInputFile() reads from the FILE *input and will read line by
 * line and will build an array of customers called custArray.
 * custArray will not contain multiples of a persons name and will
 * instead have an array of items associated with each customer.
 */
void readInputFile(FILE *input, struct customer *custArray,
	int *totalCustomers) {
	// Allocate the necessary space for the name of the customer.
	char *name = (char*) malloc(MAX_NAME_LENGTH*sizeof(char));
	// Allocate the necessary space for the name of the item.
	char *itemName = (char*) malloc(MAX_NAME_LENGTH*sizeof(char));
	// Allocate enough space for the price of an item.
	char *itemPrice = (char*) malloc(ITEM_PRICE*sizeof(char));
	// Number of items that is going to be read in.
	int numItem;
	// Initialize the item index.
	int itemIndex = 0;
	// Initialize the customer index.
	int custIndex = 0;

	int i;
	// Keep reading lines from the file until the end of the file.
	while(fscanf(input, "%s %d %s %*c%s", name, &numItem, itemName,
		itemPrice) != EOF) {

		// Initialize the flag that says whether we have a copy of
		// a name or not.
		int cpyflag = 0;
		// itemValue is item price * number of items.
		float itemValue = atof(itemPrice) * numItem;

		int n;
		// Check to see if we already have the current customer.
		for(n = 0; n < MAX_CUSTOMERS; n++) {
			if(strcmp((custArray + n)->name, name) == 0) {
				cpyflag = 1;
				itemIndex = (custArray+n)->itemIndex;
				// Assign item name
				strcpy(((custArray+n)->items+itemIndex)->itemName, 
					itemName);
				// Assign number of items
				((custArray+n)->items+itemIndex)->numItem = numItem;
				// Assign price of item
			 	((custArray+n)->items+itemIndex)->price 
			 		= atof(itemPrice);
			 	// Assign total value of this item.
			 	((custArray+n)->items+itemIndex)->itemValue 
			 		= itemValue;
			 	// Calculate the total value of the Order.
			 	(custArray+n)->totalOrder += itemValue;
			 	// Increment the itemIndex.
			 	(custArray+n)->itemIndex += 1;
			}
		}

		// If haven't seen the current customer before.
		if(cpyflag == 0) {
			// Assign the customer name.
			strcpy((custArray + custIndex)->name, name);
			// Assign the name of the initial item.
			strcpy(((custArray+custIndex)->items+0)->itemName, 
				itemName);
			// Assign the number of the initial item.
			((custArray + custIndex)->items+0)->numItem = numItem;
			// Assign the price of the initial item.
			((custArray + custIndex)->items+0)->price 
				= atof(itemPrice);
			// Assign the total value of that initial item.
			((custArray + custIndex)->items+0)->itemValue = itemValue;
			// Increment the itemIndex.
			(custArray+custIndex)->itemIndex += 1;
			// Initalize the total of the order.
			(custArray+custIndex)->totalOrder = itemValue;
			// Increment the customer index.
			custIndex++;
		}
	}
	// Set the total number of customers to the current customer
	// index.
	*totalCustomers = custIndex;

	// Free allocated memory space.
	free(name);
	free(itemName);
	free(itemPrice);
}

/*
 * sortTotalValue() function sorts the items in each customers item
 * array from the highest to lowest total cost. This function uses
 * a bubble sort to do this sorting.
 */
void sortTotalValue(struct customer *custArray, int index) {
	int i, j;
	// Allocate the memory needed for a temporary item.
	struct item *temp = (struct item*) malloc(sizeof(struct item));
	// Perform bubble sort.
	for(i = 0; i < (custArray+index)->itemIndex-1; i++) {
		for(j = 0; j < (custArray+index)->itemIndex-1-i; j++) {
			if(((custArray+index)->items+j)->itemValue 
				< ((custArray+index)->items+j+1)->itemValue) {

				// Switch the items.
				*temp = *((custArray+index)->items+j+1);
				*((custArray+index)->items+j+1) 
					= *((custArray+index)->items+j);
				*((custArray+index)->items+j) = *temp;
			}
		}
	}
	// Free up the allocated memory.
	free(temp);
}

/*
 * sortPurchases() function sorts the Customers from the highest to
 * the lowest based on how much total money they spent on their
 * order. This function also calls the sortTotalValue() function
 * so that we can sort each customers item list. This function uses
 * the bubble sort.
 */
void sortPurchases(struct customer *custArray, int totalCustomers) {
	int index;
	// Sort the items by their total values.
	for(index = 0; index < totalCustomers; index++) {
		sortTotalValue(custArray, index);
	}
	
	int i, j;

	// Allocate the memory needed for a temporary customer.
	struct customer *temp = (struct customer*) 
		malloc(sizeof(struct customer));
	// Perform the bubble sort.
	for(i = 0; i < totalCustomers-1; i++) {
		for(j = 0; j < totalCustomers-1-i; j++) {
			if((custArray+j)->totalOrder 
				< (custArray+j+1)->totalOrder) {

				// Switch the customers
				*temp = *(custArray+j+1);
				*(custArray+j+1) = *(custArray+j);
				*(custArray+j) = *temp;
			}
		}
	}
	// Free up the allocated memory.
	free(temp);
}

/*
 * createTimeOutput() function creates a text file called hw4time.txt
 * which contains the list of the customers and their associated
 * shopping list in the order that it wsa read in from the input file.
 * This function is called before the sort is performed.
 */
void createTimeOutput(struct customer *custArray, int totalCustomers, 
	FILE *chronOut) {

	int i;
	// Loop through each customer.
	for(i = 0; i < totalCustomers; i++) {
		// Print out the name of the customer.
		fprintf(chronOut, "%s\n", (custArray+i)->name);
		int j;
		// Loop through each item
		for(j = 0; j < (custArray+i)->itemIndex; j++) {
			fprintf(chronOut, "%s %d $%.2f\n", 
				// Print out name of the item.
				((custArray+i)->items+j)->itemName,
				// Print out the number of items.
				((custArray+i)->items+j)->numItem,
				// Print out the price of the item.
				((custArray+i)->items+j)->price);
		}
		// Print out a new line character for the next customer.
		fprintf(chronOut, "\n");
	}
}

/*
 * createMoneyOutput() function creates a text file called hw4money.txt
 * which contains the list of the customers and their associated
 * shopping list in order from highest to lowest of the total amount
 * they spent on their shopping list. This function is called after
 * performing the sort.
 */
void createMoneyOutput(struct customer *custArray, int totalCustomers,
	FILE *finanOut) {

	int i;
	// Loop through each customer
	for(i = 0; i < totalCustomers; i++) {
		fprintf(finanOut, "%s, Total Order =", (custArray+i)->name);
		fprintf(finanOut, " $%.2f\n", (custArray+i)->totalOrder);
		int j;
		for(j = 0; j < (custArray+i)->itemIndex; j++) {
			fprintf(finanOut, "%s %d $%.2f, Item Value = $%.2f\n", 
				// Print out the name of the item.
				((custArray+i)->items+j)->itemName,
				// Print out the number of items.
				((custArray+i)->items+j)->numItem,
				// Print out the price of the item.
				((custArray+i)->items+j)->price,
				// Print out the total value of the item.
				((custArray+i)->items+j)->itemValue);
		}
		// Print out a new line character for the next customer.
		fprintf(finanOut, "\n");
	}
}

/*
 * main() function takes in a text file, reads each line, which
 * contains a customer name, a number of items they bought, the
 * name of the associated item, and the price of the item. The main
 * function then creates two output text files; one which contains
 * the list of customers and the list of the items they bought in 
 * the order of which they were read in and another which contains
 * the list of customers and the list of the items they bought in
 * the order of highest to lowest based on total amount they spent
 * and then each list of items is also ordered from highest to lowest
 * based on the amount each item total is.
 */
int main(void) {

	// Create a file pointer for the input file.
	FILE *input = fopen("hw4input.txt", "r");
	// Allocate enough memory for an array of customers.
	struct customer *custArray = (struct customer*) 
		malloc(MAX_CUSTOMERS*sizeof(struct customer));

	int i;
	// Loop through each customer.
	for(i = 0; i < MAX_CUSTOMERS; i++) {
		// Allocate enough space for the Customer's name.
		(custArray+i)->name = (char*) 
			malloc(MAX_NAME_LENGTH*sizeof(char));
		// Initialize itemIndex to zero.
		(custArray+i)->itemIndex = 0;
		// Allocate enough memory for an array of items.
		(custArray+i)->items = (struct item*) 
			malloc(MAX_ITEMS*sizeof(struct item));

		int j;
		// Loop through each item list.
		for(j = 0; j < MAX_ITEMS; j++) {
			// Allocate enough memory for the item's name.
			((custArray + i)->items + j)->itemName 
				= (char*) malloc(MAX_NAME_LENGTH*sizeof(char));
		}
	}

	// initialize totalCustomers to zero.
	int totalCustomers = 0;

	// Read the input file and populate the customer array.
	readInputFile(input, custArray, &totalCustomers);

	// Close the input file.
	fclose(input);

	// Create chronological output file.
	FILE *chronOut = fopen("hw4time.txt" , "w");
	// Create sorted output file.
	FILE *finanOut = fopen("hw4money.txt", "w");

	// Write to the chronological text file.
	createTimeOutput(custArray, totalCustomers, chronOut);

	// Perform sort on the customer array.
	sortPurchases(custArray, totalCustomers);

	// Write to the sorted text file.
	createMoneyOutput(custArray, totalCustomers, finanOut);

	// Close both the output files.
	fclose(chronOut);
	fclose(finanOut);

	return 0;
}
