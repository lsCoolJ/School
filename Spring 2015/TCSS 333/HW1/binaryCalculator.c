/* 
 * Ben Foster
 * Binary Calculator
 * TCSS 333 Homework 1
 * Instructor: John Mayer
 * Date: April 10, 2015
 */

// For input and output.
#include <stdio.h>
// For the exit() function.
#include <stdlib.h>

/* 
 * The init() function is used to print out the first two lines of the
 * program along with the first prompt symbol (>).
 */
void init() {
	// Split into multiple lines to fit within 72 characters.
	printf("=====================Bens Binary Calculator=============");
	printf("========\n");

	// Split into multiple lines to fit within 72 characters.
	printf("Enter two binary numbers and an operator in between (+, ");
	printf("-, /, *)\n");

	// Print the first prompt symbol.
	printf("> ");
}

/*
 * The endProgram() function is used to print out the ending line of
 * the program indicating that the program is being terminated.
 */
void endProgram() {
	// Split into multiple lines to fit within 72 characters.
	printf("=======================End of the program=======");
	printf("================\n");

	// Use the exit() function provided by the standard library
	// with exit code zero to indicate successful termination.
	exit(0);
}

/*
 * The resetLoop() function is used to reset most of the variables
 * to 0 or 1 once the result is done being calculated and also done
 * being converted into a binary number and printed out. This function
 * also prints out another prompt symbol (>) indicating that the
 * program is ready for another problem.
 */
void resetLoop(double *firstNum, double *secondNum, char operation,
				double *result, double *myVal, double *cp2) {
	printf("\n> ");
	*firstNum = 0;
	*secondNum = 0;
	operation = '0';
	*result = 0;
	*myVal = 0;
	*cp2 = 1;
}

/*
 * The doop() function stands for "Do Operation" and is used for
 * actually computing the result based on the operation given.
 */
double doop(double firstNum, double secondNum, char operation) {
	// Use this as return value.
	double opResult;

	// Use switch-case statement instead of multiple if-else
	switch(operation) {
		// If operation is addition.
		case '+':
			opResult = firstNum + secondNum;
			break;
		// If operation is subtraction.
		case '-':
			opResult = firstNum - secondNum;
			break;
		// If operation is division.
		case '/':
			opResult = firstNum / secondNum;
			break;
		// If operation is multiplication.
		case '*':
			opResult = firstNum * secondNum;
			break;
		// If no operation is given but only one number is.
		default:
			opResult = secondNum;
			break;
	}

	// Return the final result.
	return opResult;
}

/*
 * The binaryToFloat() function is used to convert the binary numbers
 * given into floats (actually doubles) in order to compute the
 * indicated operation between the two numbers.
 */
void binaryToFloat(int decFlag, double *myVal, double *cp2,
					 char myChar) {
	// If decFlag is 0 then this is before the binary point.
	if(decFlag == 0) {
		// Double the current value of myVal.
		*myVal = *myVal * 2;
		// Add a 1 or 0 to myVal
		*myVal = *myVal + (myChar - '0');
	// Else if decFlag is 1 then this is after the binary point.
	} else {
		// Divide the current power of 2.
		*cp2 = *cp2 / 2;
		// Add the current power of two to myVal if it myChar is 1.
		*myVal = *myVal + (*cp2 * (myChar - '0'));
	}
 }

 /*
  * The floatToBinary() function takes the given result and converts
  * it to binary and prints it out in a aesthetically pleasing way.
  * This function will always print out the binary with a binary point
  * even if the user input a binary number without a binary point.
  */
 void floatToBinary(double *result, double *cp2, int *decFlag) {
 	// Set cp2 to 1 to being getting it up to the right power.
 	*cp2 = 1;
 	// Get the current power up.
 	while(*cp2 <= *result) {
		*cp2 = *cp2 * 2;
	}
	// Divide by two or it won't be right.
	*cp2 = *cp2 / 2;
	// Set decFlag to 1 in order to always print out the correct
	// binary representation of the result.
	*decFlag = 1;

	// This statment prints out a 0 before the binary point if the
	// result is a fraction.
	if(*result < 1) {
		printf("0");
	}

	// Loop until result is 0 or current power is greater than or
	// equal to 0.5.
	while(*result > 0 || *cp2 >= 0.5) {
		// Print out the decimal in the right place.
		if(*decFlag == 1 && *cp2 < 1) {
			printf(".");
			*decFlag = 0;
		}
		if((*result - *cp2) >= 0) {
			*result = *result - *cp2;
			printf("1");
		} else {
			printf("0");
		}
		*cp2 = *cp2 / 2;
	}
 }

 /*
  * The setOperation() function sets the operation character equal to
  * what myChar is while also setting myVal to zero, cp2 to one, 
  * decFlag to zero, and firstNum to myVal since by the time we get to
  * this point we have already gone through the entire first binary
  * number.
  */
void setOperation(char *operation, char myChar, double *firstNum,
					double *myVal, double *cp2, int *decFlag) {
	*operation = myChar;
	*firstNum = *myVal;
	*myVal = 0;
	*cp2 = 1;
	*decFlag = 0;
}

/*
 * The main() function runs the program as intended. This is the first
 * homework assignment in the class TCSS 333. In this assignment, we
 * are required to write a program where a user types in two binary
 * numbers and an operation (+, - , /, or *) between the two numbers
 * and the program is to perform the operation and calculate the result
 * and then print out the result in binary form.
 */
int main(void) {
	// Declarations not counted when making sure that each function
	// fits on the screen when writing this program.
	char 	myChar;
	double 	firstNum 	= 0;	
	char 	operation;
	double 	secondNum 	= 0;
	double 	result;
	int 	decFlag 	= 0;
	double 	myVal 		= 0;
	double 	cp2 		= 1;

	// Initialize the program.
	init();

	// Main loop that always scans for new characters.
	while(1) {
		scanf("%c", &myChar);
		if(myChar == ' ') {} // Skip over if it's a space.
		else if(myChar == 'Q' || myChar == 'q') {
			endProgram(); // If q or Q is typed, end the program
		} else if(myChar == '\n') {
			// Set second number to myVal since we're done reading the
			// second number.
			secondNum = myVal;

			// Calculate the result in the function "Do Operation".
			result = doop(firstNum, secondNum, operation);

			// Convert the result into binary and print it out.
			floatToBinary(&result, &cp2, &decFlag);
			
			// RESET the numbers, operation, value, result, and current
			// power of two so that no weird numbers show up.
			resetLoop(&firstNum, &secondNum, operation, &result, 
						&myVal, &cp2);

		} else if(myChar == '+' ||
					myChar == '/' ||
					myChar == '-' ||
					myChar == '*') {
			// Set the operation character while also setting firstNum
			// to myVal and resetting myVal to 0, cp2 to 1, and 
			// decFlag to 0.
			setOperation(&operation, myChar, &firstNum, &myVal, &cp2,
						 &decFlag);
		} else if(myChar == '.') {
			// Set the decimal flag to 1 so that we know when
			// converting the binary to a float.
			decFlag = 1;
		} else {
			// Convert the binary number given to a float.
			binaryToFloat(decFlag, &myVal, &cp2, myChar);
		}
	}
	
	// Return 0 when the program is done running.
	return 0;
}