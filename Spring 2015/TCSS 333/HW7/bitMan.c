/*
 * Ben Foster
 * Bit Manipulation
 * TCSS 333 Homework 7
 * Instructor: John Mayer
 * Date: June 4, 2015
 */

#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <string.h>

int main(void) {

	float myFloat;
	int myInt, i;
	char binExp[9];
	char binFrac[24];
	char binFloat[32];
	int sign;
	
	while(1) {
		int unbiexp = 0;
		printf("Enter a float: ");
		scanf("%f", &myFloat);
		printf("Your float was read as: %f\n", myFloat);
		if(myFloat == fabs(myFloat)) sign = 0;
		else sign = 1;
		myFloat = fabs(myFloat);

		if(myFloat > 1) {
			while(myFloat > 2) {
				myFloat = myFloat / 2;
				unbiexp++;
			}
		} else {
			while(myFloat < 1) {
				myFloat = myFloat * 2;
				unbiexp--;
			}
		}
		int exponent = 127 + unbiexp;

		for(i = 7; i > -1; i--) {
			if(exponent % 2 == 0) {
				binExp[i] = '0';
			} else if (exponent % 2 == 1) {
				binExp[i] = '1';
			}
			exponent = exponent / 2;
		}
		binExp[8] = '\0';

		myFloat = myFloat - 1;
		for(i = 0; i < 23; i++) {
			myFloat = myFloat * 2;
			if(myFloat >= 1) {
				binFrac[i] = '1';
				myFloat = myFloat - 1;
			} else binFrac[i] = '0';
		}
		binFrac[23] = '\0';

		strcpy(binFloat, binExp);
		strcat(binFloat, binFrac);

		printf("Your Float in 32 bits: %d%s\n", sign, binFloat);
		printf("Sign: %d\n", sign);
		printf("Exponent: %s\n", binExp);
		printf("Fraction: %s\n", binFrac);

		float final = 1.0;
		printf("\nCreating the fraction:\n");
		printf("fraction = %f (the implicit 1)\n", final);
		float fraction = 0.5;
		for(i = 0; i < 23; i++) {
			if(binFrac[i] == '0') {
				printf("fraction = %f, ", final);
				printf("after skipping %f\n", fraction);
			} else if (binFrac[i] == '1') {
				final = final + fraction;
				printf("fraction = %f, ", final);
				printf("after adding %f\n", fraction);
			}
			fraction = fraction / 2;
		}

		printf("\nAppyling the exponent:\n");
		printf("unbiased exponent = %d\n", unbiexp);
		if(unbiexp > 0) {
			while(unbiexp > 0) {
				final = (final * 2);
				printf("times 2 = %f\n", final);
				unbiexp--;
			}
		} else if(unbiexp < 0) {
			while(unbiexp < 0) {
				final = (final / 2);
				printf("divided by 2 = %f\n", final);
				unbiexp++;
			}
		}
		if(sign == 1) final = final * -1;
		printf("\nFinal Answer: %f\n", final);
	}
	return 0;
}
