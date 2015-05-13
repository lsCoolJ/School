// bmpcpy.c

#include <stdio.h>

int main(void) {
	char header1[34], header2[16];
	int imageSize;
	char pixels[160][720];

	FILE *infile = fopen("test1.bmp", "rb");
	FILE *outfile = fopen("RedShift.bmp", "wb");

	fread(header1, sizeof(char), 34, infile);
	fread(&imageSize, sizeof(char), 4, infile);
	fread(header2, sizeof(char), 16, infile);
	fread(pixels, sizeof(char), 115200, infile);

	for(int r = 0; r < 160; r++) {
		for(int c = 0; c < 720; c+=3) {
			//char temp = pixels[r][c];
			pixels[r][c+2] = 255;
			//pixels[160-r-1][c] = temp;
		}
	}

	fwrite(header1, sizeof(char), 34, outfile);
	fwrite(&imageSize, sizeof(char), 4, outfile);
	fwrite(header2, sizeof(char), 16, outfile);
	fwrite(pixels, sizeof(char), 115200, outfile);

	fclose(infile);
	fclose(outfile);

	return 0;
}