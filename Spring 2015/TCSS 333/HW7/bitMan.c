/*
 * Ben Foster
 * Bit Manipulation
 * TCSS 333 Homework 7
 * Instructor: John Mayer
 * Date: June 5, 2015
 */

// Library includes
#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <string.h>

/*
Uni is a union containing an integer i and a float f. This
	union is used to find the single precision binary format
	of the float entered by the user.
*/
typedef union {
	int i;
	float f;
} Uni;

/*
The initialize() method takes a pointer to a union and a pointer
	to an integer and starts off the program by prompting the user
	for a float. Once the user enters a float, then it is read back
	to the user in 32 bit singe precision format, giving the sign,
	biased exponent, and fraction of the number.
*/
void initialize(Uni *myFloat, int *sign) {
	char binExp[9], binFrac[24];
	printf("Enter a float: ");
	scanf("%f", &myFloat->f);
	printf("Your float was read as: %f\n", myFloat->f);
	int i, temp = myFloat->i;
	for(i = 0; i < 8; i++) {
		temp <<= 1;
		if(temp & 0x80000000) binExp[i] = '1';
		else binExp[i] = '0';
	}
	binExp[i] = '\0';
	for(i = 0; i < 23; i++) {
		temp <<= 1;
		if(temp & 0x80000000) binFrac[i] = '1';
		else binFrac[i] = '0';
	}
	binFrac[i] = '\0';
	if(0x80000000 & myFloat->i) *sign = 1;
	else *sign = 0;
	printf("You float in 32 bits: %d%s%s\n", *sign,binExp,binFrac);
	printf("Sign: %d\n", *sign);
	printf("Exponent: %s\n", binExp);
	printf("Fraction: %s\n\n", binFrac);
}

/*
The createFraction() method takes a pointer to a union and a pointer
	to a float as arguments and shows the user how to recreate the
	float they entered from its fraction portion of its single 
	precision binary format.
*/
void createFraction(Uni *myFloat, float *final) {
	float fraction = 0.5;
	int i, temp = myFloat->i;
	printf("Creating the fraction:\n");
	printf("fraction = %f (the implicit 1)\n", *final);
	for(i = 0; i < 23; i++) {
		if(temp & 0x00400000) {
			*final = *final + fraction;
			printf("fraction = %f, ", *final);
			printf("after adding %f\n", fraction);
		} else {
			printf("fraction = %f, ", *final);
			printf("after skipping %f\n", fraction);
		}
		temp <<= 1;
		fraction = fraction / 2;
	}
}

/*
the applyExponent() method takes a pointer to a union and a pointer
	to a float as arguments and shows the user how to recreate the 
	float they entered from its exponent portion of its single
	precision binary format.
*/
void applyExponent(Uni *myFloat, float *final) {
	printf("\nApplying the exponent:\n");
	int unbiexp = 0;
	unbiexp = myFloat->i;
	unbiexp = ((unbiexp >> 23) & 0x000000ff);
	unbiexp = unbiexp - 127;
	printf("unbiased exponent = %d\n", unbiexp);
	while(unbiexp != 0) {
		if(unbiexp > 0) {
			*final = (*final * 2);
			printf("times 2 = %f\n", *final);
			unbiexp--;
		} else {
			*final = (*final / 2);
			printf("divided by 2 = %f\n", *final);
			unbiexp++;
		}
	}
}

/*
The printFinal() method takes a pointer to a float and pointer
	to an integer as its arguments and the only thing it does is
	print out the final answer after rebuilding the float from
	its single precision binary representation.
*/
void printFinal(float *final, int *sign) {
	if(*sign == 1) *final = *final * -1;
	printf("\nFinal Answer: %f\n", *final);
	printf("========== Next ==========\n\n");
}

/*
the main() method prompts the user for a float and then converts
	it to a single precision binary format. From there it shows
	the user how to build that float again from its single
	precision binary representation.
*/
int main(void) {

	Uni *myFloat = (Uni*) malloc(sizeof(Uni));

	while(1) {
		int sign;
		initialize(myFloat, &sign);

		float final = 1.0;
		createFraction(myFloat, &final);

		applyExponent(myFloat, &final);

		printFinal(&final, &sign);
	}
	return 0;
}
