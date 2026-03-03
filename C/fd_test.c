#include <unistd.h>
#include <stdio.h>
#include <errno.h>
#include <string.h>

int main() {
	printf("test before closing 0/stdout\n");
	if (close(STDOUT_FILENO) != 0) {
		fprintf(stderr, "Close failed with: %s\n",strerror(errno));
		return 1;
	}
	fprintf(stderr, "test after closing 0/stdout\n");
	return 0;
}
