#include <stdio.h>

#define W_OFFSET 18
#define H_OFFSET 28
#define WH_SIZE 4
#define HEADER_SIZE 54
#define NUM_CHECKERS 8

int main(void) {
	// Declare headers and all needed integers
	unsigned char headerOneA[W_OFFSET], headerOneB[H_OFFSET];
	int width, height, picSize; 
	unsigned char headerTwo[HEADER_SIZE];

	// Declare and open all the files to read and write
	FILE *inFileOne = fopen("in1.bmp", "rb");
	FILE *inFileTwo = fopen("in2.bmp", "rb");
	FILE *outFileBlend = fopen("blend.bmp", "wb");
	FILE *outFileChecker = fopen("checker.bmp", "wb");

	// Read in the first image Header
	fread(headerOneA, sizeof(char), W_OFFSET, inFileOne);
	// Get the width of the picture
	fread(&width, sizeof(char), WH_SIZE, inFileOne);
	// Get the height of the picture
	fread(&height, sizeof(char), WH_SIZE, inFileOne);
	// Read in the rest of the header
	fread(headerOneB, sizeof(char), H_OFFSET, inFileOne);
	picSize = width * height * 3;
	
	// Declare the arrays for each picture
	unsigned char bmpOne[height][width*3];
	unsigned char bmpTwo[height][width*3];
	unsigned char blend[height][width*3];
	unsigned char check[height][width*3];

	// Read in the first image.
	fread(bmpOne, sizeof(char), picSize, inFileOne);

	// Read in the second image. We don't need to get the size of this
	// One because it should be the same size as the first.
	fread(headerTwo, sizeof(char), HEADER_SIZE, inFileTwo);
	fread(bmpTwo, sizeof(char), picSize, inFileTwo);

	// Blend and Checker the two images.
	int checkRow, checkCol, temp, average;
	for(int r = 0; r < height; r++) {
		checkRow = r / (height / NUM_CHECKERS);
		for(int c = 0; c < width*3; c++) {
			// Blend the two pictures
				// Highest point is bmpOne+(407*408*3)+1223
			temp = *(bmpOne[r]+c) + *(bmpTwo[r]+c);
			average = temp / 2;
			blend[r][c] = average;

			// Checker the pictures
			checkCol = c / (width * 3 / NUM_CHECKERS);
			if((checkRow + checkCol) % 2 == 0){
				check[r][c] = bmpOne[r][c];
			} else {
				check[r][c] = bmpTwo[r][c];
			}
		}
	}

	// Since the two files have the same header, then we don't have to
	// Read in the separate parts of the first header file and we can
	// just use the second header.
	fwrite(headerTwo, sizeof(char), HEADER_SIZE, outFileBlend);
	fwrite(headerTwo, sizeof(char), HEADER_SIZE, outFileChecker);
	fwrite(blend, sizeof(char), picSize, outFileBlend);
	fwrite(check, sizeof(char), picSize, outFileChecker);

	// Close each of the files.
	fclose(inFileOne);
	fclose(inFileTwo);
	fclose(outFileBlend);
	fclose(outFileChecker);

	return 0;
}