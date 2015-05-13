#include <stdio.h>

int main(void) {
	int num, numCount;
	int i;
	int sum = 0;
	FILE *infile, *outfile;

	infile = fopen("addin.txt", "r");
	outfile = fopen("addout.txt", "w");

	fscanf(infile, "%d", &numCount);
	for(i = 1; i <= numCount; i++) {
		fscanf(infile, "%d", &num);
		sum += num;
	}
	fprintf(outfile, "sum is %d\n", sum);

	fclose(infile);
	fclose(outfile);
}