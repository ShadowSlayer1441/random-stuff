#include<stdio.h>
#include <stdlib.h>

void main() {
	char *test = malloc(1000000000);
	*test = 'F';
	printf("%s", *test);
}
