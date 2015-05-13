#include <stdio.h>

void testFunction(int width, unsigned char test[][width]) {
	printf("Before: %c\n", test[0][1]);
	test[0][1] = 'E';
}

int main(void) {
	unsigned char header[54];
	unsigned char image[512][1536];
	unsigned char grayScale[512][1536];

	FILE *infile = fopen("testImages/in2.bmp", "rb");
	FILE *outfile = fopen("lenaGrayScale.bmp", "wb");

	fread(header, sizeof(char), 54, infile);
	fread(image, sizeof(char), 786432, infile);

	int gray;

	//grayScaleIt(image, grayScale);

	// TEST
	int width = 2;
	unsigned char test[2][2] = { {'A', 'B'}, {'C', 'D'} };
//	unsigned char **p = &&test;
	testFunction(width, test);
	printf("After: %c\n", test[0][1]);

	for(int r = 0; r < 512; r++) {
		for(int c = 0; c < 1536; c+=3) {
			if(image[r][c] >= image[r][c+1] && image[r][c] >= image[r][c+2]) {
				grayScale[r][c] = image[r][c];
				grayScale[r][c+1] = image[r][c];
				grayScale[r][c+2] = image[r][c];
			} else if(image[r][c+1] >= image[r][c] && image[r][c+1] >= image[r][c+2]) {
				grayScale[r][c] = image[r][c+1];
				grayScale[r][c+1] = image[r][c+1];
				grayScale[r][c+2] = image[r][c+1];
			} else {
				grayScale[r][c] = image[r][c+2];
				grayScale[r][c+1] = image[r][c+2];
				grayScale[r][c+2] = image[r][c+2];
			}
		}
	}

	fwrite(header, sizeof(char), 54, outfile);
	fwrite(grayScale, sizeof(char), 786432, outfile);

	fclose(infile);
	fclose(outfile);

	return 0;

}

//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////

// #include <stdio.h>

// #define W_OFFSET 18
// #define H_OFFSET 28
// #define WH_SIZE 4
// #define HEADER_SIZE 54
// #define NUM_CHECKERS 8

// int main(void) {
// 	// Declare headers and all needed integers
// 	unsigned char headerOneA[18], headerOneB[28];
// 	int width, height, picSize; 
// 	unsigned char headerTwo[HEADER_SIZE];

// 	// Declare and open all the files to read and write
// 	FILE *inFileOne = fopen("in1.bmp", "rb");
// 	FILE *inFileTwo = fopen("in2.bmp", "rb");
// 	FILE *outFileBlend = fopen("blend.bmp", "wb");
// 	FILE *outFileChecker = fopen("checker.bmp", "wb");

// 	// Read in the first image Header
// 	fread(headerOneA, sizeof(char), W_OFFSET, inFileOne);
// 	// Get the width of the picture
// 	fread(&width, sizeof(char), WH_SIZE, inFileOne);
// 	// Get the height of the picture
// 	fread(&height, sizeof(char), WH_SIZE, inFileOne);
// 	// Read in the rest of the header
// 	fread(headerOneB, sizeof(char), H_OFFSET, inFileOne);
// 	picSize = width * height * 3;
	
// 	// Declare the arrays for each picture
// 	unsigned char bmpOne[height][width*3];
// 	unsigned char bmpTwo[height][width*3];
// 	unsigned char blend[height][width*3];
// 	unsigned char check[height][width*3];

// 	// Read in the first image.
// 	fread(bmpOne, sizeof(char), picSize, inFileOne);

// 	// Read in the second image. We don't need to get the size of this
// 	// One because it should be the same size as the first.
// 	fread(headerTwo, sizeof(char), HEADER_SIZE, inFileTwo);
// 	fread(bmpTwo, sizeof(char), picSize, inFileTwo);

// 	// Blend and Checker the two images.
// 	int checkRow, checkCol, temp, average;
// 	for(int r = 0; r < height; r++) {
// 		checkRow = r / (height / NUM_CHECKERS);
// 		for(int c = 0; c < width*3; c++) {
// 			// Blend the two pictures
// 				// Highest point is bmpOne+(407*408*3)+1223
// 			temp = *(bmpOne[r]+c) + *(bmpTwo[r]+c);
// 			average = temp / 2;
// 			*(blend[r] + c) = average;

// 			// Checker the pictures
// 			checkCol = c / (width * 3 / NUM_CHECKERS);
// 			if((checkRow + checkCol) % 2 == 0){
// 				*(check[r] + c) = bmpOne[r][c];
// 			} else {
// 				*(check[r] + c) = bmpTwo[r][c];
// 			}
// 		}
// 	}

// 	// Since the two files have the same header, then we don't have to
// 	// Read in the separate parts of the first header file and we can
// 	// just use the second header.
// 	fwrite(headerTwo, sizeof(char), HEADER_SIZE, outFileBlend);
// 	fwrite(headerTwo, sizeof(char), HEADER_SIZE, outFileChecker);
// 	fwrite(blend, sizeof(char), picSize, outFileBlend);
// 	fwrite(check, sizeof(char), picSize, outFileChecker);

// 	// Close each of the files.
// 	fclose(inFileOne);
// 	fclose(inFileTwo);
// 	fclose(outFileBlend);
// 	fclose(outFileChecker);

// 	return 0;
// }

//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////

// #include <stdio.h>

// int main(void) {
// 	char header[54] = {0x42, 0x4D, 0x36, 0x2C, 0x01, 0x00, 0x00, 0x00,
// 	 	0x00, 0x00, 0x36, 0x00, 0x00, 0x00, 0x28, 0x00, 0x00, 0x00,
// 	 	0xA0, 0x00, 0x00, 0x00, 0xA0, 0x00, 0x00, 0x00, 0x01, 0x00,
// 	 	0x18, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x2C, 0x01, 0x00,
// 	 	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
// 	 	0x00, 0x00, 0x00, 0x00, 0x00, 0x00 };
// 	char data[408][1224];

// 	FILE *outFile = fopen("TestOut.bmp", "wb");

// 	for(int r = 0; r < 408; r++) {
// 		for(int c = 0; c < 1224; c+=3) {
// 			data[r][c] = 0;
// 			data[r][c+1] = 510;
// 	 		data[r][c+2] = 510;
// 	 	}
// 	}

// 	fwrite(header, sizeof(char), 54, outFile);
// 	fwrite(data, sizeof(char), 408 * 1224, outFile);
// 	fclose(outFile);

// 	return 0;
// }

//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////



#include <stdio.h>

#define W_OFFSET 18
#define H_OFFSET 28
#define WH_SIZE 4
#define HEADER_SIZE 54
#define NUM_CHECKERS 8

void readInHeaders(unsigned char headerOneA[], unsigned char headerOneB[],
	unsigned char headerTwo[], int *width, int *height, int *picSize,
	FILE *inFileOne, FILE *inFileTwo) {

	//Read in the first image Header
	fread(headerOneA, sizeof(char), W_OFFSET, inFileOne);
	// Get the width of the picture
	fread(&width, sizeof(char), WH_SIZE, inFileOne);
	// Get the height of the picture
	fread(&height, sizeof(char), WH_SIZE, inFileOne);
	// Read in the rest of the header
	fread(headerOneB, sizeof(char), H_OFFSET, inFileOne);
	*picSize = *width * *height * 3;

	// We don't need to get the size of this
	// one because it should be the same size as the first.
	fread(headerTwo, sizeof(char), HEADER_SIZE, inFileTwo);
}

void blendChecker(int height, int width, unsigned char bmpOne[][width], 
	unsigned char bmpTwo[][width], unsigned char blend[][width],
	unsigned char check[][width]) {
	// Blend and Checker the two images.
	int checkRow, checkCol, temp, average;
	for(int r = 0; r < height; r++) {
		checkRow = r / (height / NUM_CHECKERS);
		for(int c = 0; c < width*3; c++) {
			// Blend the two pictures
			// Highest point is bmpOne+(407*408*3)+1223
			temp = bmpOne[r][c] + bmpTwo[r][c];
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
}

void writeOutImages(int width, int picSize, unsigned char headerTwo[],
	unsigned char blend[][width], unsigned char check[][width],
	FILE *outFileBlend, FILE *outFileChecker) {

	// Since the two files have the same header, then we don't have to
	// Read in the separate parts of the first header file and we can
	// just use the second header.
	fwrite(headerTwo, sizeof(char), HEADER_SIZE, outFileBlend);
	fwrite(headerTwo, sizeof(char), HEADER_SIZE, outFileChecker);
	fwrite(blend, sizeof(char), picSize, outFileBlend);
	fwrite(check, sizeof(char), picSize, outFileChecker);

	// Close each of the files.
	//fclose(inFileOne);
	//fclose(inFileTwo);
	fclose(outFileBlend);
	fclose(outFileChecker);
}

int main(void) {
	// Declare headers and all needed integers
	unsigned char headerOneA[18], headerOneB[28];
	int width, height, picSize; 
	unsigned char headerTwo[HEADER_SIZE];

	// Declare and open all the files to read and write
	FILE *inFileOne = fopen("testImages/in1.bmp", "rb");
	FILE *inFileTwo = fopen("testImages/in2.bmp", "rb");
	FILE *outFileBlend = fopen("blend.bmp", "wb");
	FILE *outFileChecker = fopen("checker.bmp", "wb");

	// Fill in the headers and size of pictures
	readInHeaders(headerOneA, headerOneB, headerTwo, &width, &height,
		&picSize, inFileOne, inFileTwo);

	// // Read in the first image Header
	// fread(headerOneA, sizeof(char), W_OFFSET, inFileOne);
	// // Get the width of the picture
	// fread(&width, sizeof(char), WH_SIZE, inFileOne);
	// // Get the height of the picture
	// fread(&height, sizeof(char), WH_SIZE, inFileOne);
	// // Read in the rest of the header
	// fread(headerOneB, sizeof(char), H_OFFSET, inFileOne);
	// picSize = width * height * 3;
	
	// Declare the arrays for each picture
	unsigned char bmpOne[height][width*3];
	unsigned char bmpTwo[height][width*3];
	unsigned char blend[height][width*3];
	unsigned char check[height][width*3];

	// Read in the first image.
	fread(bmpOne, sizeof(char), picSize, inFileOne);

	// Read in the second image. We don't need to get the size of this
	// One because it should be the same size as the first.
	// fread(headerTwo, sizeof(char), HEADER_SIZE, inFileTwo);
	fread(bmpTwo, sizeof(char), picSize, inFileTwo);

	fclose(inFileOne);
	fclose(inFileTwo);


	blendChecker(height, width, bmpOne, bmpTwo, blend, check);
	// // Blend and Checker the two images.
	// int checkRow, checkCol, temp, average;
	// for(int r = 0; r < height; r++) {
	// 	checkRow = r / (height / NUM_CHECKERS);
	// 	for(int c = 0; c < width*3; c++) {
	// 		// Blend the two pictures
	// 			// Highest point is bmpOne+(407*408*3)+1223
	// 		temp = *(bmpOne[r]+c) + *(bmpTwo[r]+c);
	// 		average = temp / 2;
	// 		*(blend[r] + c) = average;

	// 		// Checker the pictures
	// 		checkCol = c / (width * 3 / NUM_CHECKERS);
	// 		if((checkRow + checkCol) % 2 == 0){
	// 			*(check[r] + c) = bmpOne[r][c];
	// 		} else {
	// 			*(check[r] + c) = bmpTwo[r][c];
	// 		}
	// 	}
	// }

	writeOutImages(width, picSize, headerTwo, blend,check,
		outFileBlend, outFileChecker);

	// // Since the two files have the same header, then we don't have to
	// // Read in the separate parts of the first header file and we can
	// // just use the second header.
	// fwrite(headerTwo, sizeof(char), HEADER_SIZE, outFileBlend);
	// fwrite(headerTwo, sizeof(char), HEADER_SIZE, outFileChecker);
	// fwrite(blend, sizeof(char), picSize, outFileBlend);
	// fwrite(check, sizeof(char), picSize, outFileChecker);

	// // Close each of the files.
	// fclose(inFileOne);
	// fclose(inFileTwo);
	// fclose(outFileBlend);
	// fclose(outFileChecker);

	return 0;
}

////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////

// #include <stdio.h>

// #define W_OFFSET 18
// #define H_OFFSET 28
// #define WH_SIZE 4
// #define HEADER_SIZE 54
// #define NUM_CHECKERS 8

// void blendAndChecker(int height, int width, int picSize,
//  FILE *inFileOne, FILE *inFileTwo, FILE *outFileBlend, 
//  FILE *outFileChecker) {
// 	// Declare the arrays for each picture
// 	unsigned char bmpOne[height][width*3];
// 	unsigned char bmpTwo[height][width*3];
// 	unsigned char blend[height][width*3];
// 	unsigned char check[height][width*3];
// 	unsigned char headerTwo[HEADER_SIZE];

// 	// Read in the first image
// 	fread(bmpOne, sizeof(char), picSize, inFileOne);
// 	// Read in the second image. We don't need to get the size of this
// 	// one because it should be the same size as the first.
// 	fread(headerTwo, sizeof(char), HEADER_SIZE, inFileTwo);
// 	fread(bmpTwo, sizeof(char), picSize, inFileTwo);

// 	// Blend and Checker the two images.
// 	int checkRow, checkCol, temp, average;
// 	for(int r = 0; r < height; r++) {
// 		checkRow = r / (height / NUM_CHECKERS);
// 		for(int c = 0; c < width*3; c++) {
// 			// Blend the two pictures
// 			temp = bmpOne[r][c] + bmpTwo[r][c];
// 			average = temp / 2;
// 			blend[r][c] = average;

// 			// Checker the pictures
// 			checkCol = c / (width * 3 / NUM_CHECKERS);
// 			if((checkRow + checkCol) % 2 == 0){
// 				check[r][c] = bmpOne[r][c];
// 			} else {
// 				check[r][c] = bmpTwo[r][c];
// 			}
// 		}
// 	}

// 	// Since the two files have the same header, then we don't have to
// 	// Read in the separate parts of the first header file and we can
// 	// just use the second header.
// 	fwrite(headerTwo, sizeof(char), HEADER_SIZE, outFileBlend);
// 	fwrite(headerTwo, sizeof(char), HEADER_SIZE, outFileChecker);
// 	fwrite(blend, sizeof(char), picSize, outFileBlend);
// 	fwrite(check, sizeof(char), picSize, outFileChecker);
// }

// int main(void) {
// 	// Declare headers and all needed integers
// 	unsigned char headerOneA[18], headerOneB[28];
// 	int width, height, picSize; 

// 	// Declare and open all the files to read and write
// 	FILE *inFileOne = fopen("in1.bmp", "rb");
// 	FILE *inFileTwo = fopen("in2.bmp", "rb");
// 	FILE *outFileBlend = fopen("blend.bmp", "wb");
// 	FILE *outFileChecker = fopen("checker.bmp", "wb");

// 	// Read in the first image Header
// 	fread(headerOneA, sizeof(char), W_OFFSET, inFileOne);
// 	// Get the width of the picture
// 	fread(&width, sizeof(char), WH_SIZE, inFileOne);
// 	// Get the height of the picture
// 	fread(&height, sizeof(char), WH_SIZE, inFileOne);
// 	// Read in the rest of the header
// 	fread(headerOneB, sizeof(char), H_OFFSET, inFileOne);
// 	picSize = width * height * 3;
	
// 	blendAndChecker(height, width, picSize, inFileOne, inFileTwo, 
// 		outFileBlend, outFileChecker);

// 	// Close each of the files.
// 	fclose(inFileOne);
// 	fclose(inFileTwo);
// 	fclose(outFileBlend);
// 	fclose(outFileChecker);

// 	return 0;
// }
