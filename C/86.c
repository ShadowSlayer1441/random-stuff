#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>

void main() {
	int x = 5;
	int y = 5;
	int *ptr = malloc(5);
	printf("%d, %d",sizeof(int),sizeof(ptr)); 
	if (x >= 5) {
		printf("GDB can be funky");
	}
	free(ptr);
	return;
}
