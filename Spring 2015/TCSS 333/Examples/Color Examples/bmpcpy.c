// bmpcpy.c

#include <stdio.h>

int main(void) {
	char header[54];
	char pixels[160][720];

	FILE *infile = fopen("test1.bmp", "rb");
	FILE *outfile = fopen("cpyTest1.bmp", "wb");

	// Where you read into, how many at a time, how many times, where from
	fread(header, 1, 54, infile);
	fread(pixels, 1, 115200, infile);

	for(int r = 0; r < 160; r++) {
		for(int c = 0; c < 720; c += 3) {
			char temp = pixels[r][c];
			pixels[r][c] = pixels[r][c+1];
			pixels[r][c+1] = temp;
		}
	}

	fwrite(header, sizeof(char), 54, outfile);
	fwrite(pixels, sizeof(char), 115200, outfile);

	fclose(infile);
	fclose(outfile);

	return 0;
}