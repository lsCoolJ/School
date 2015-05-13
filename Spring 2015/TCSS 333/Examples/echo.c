#include <stdio.h>

int main(void) {
	char str;

	while(1) {
		printf("TOP\n");
		scanf("%c", str);
		printf("%c", str);
	}

	return 0;
}