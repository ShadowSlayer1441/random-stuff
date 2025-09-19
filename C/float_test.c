#include<stdio.h>

void main() {
	unsigned int one = 0;
	unsigned int old = 0;
	while(1) {
		old = one;
		one++;
		if (old > one) {
			printf("long unsigned int is %u, old == %u\n",one,old);
			return;
		}
	}
}
