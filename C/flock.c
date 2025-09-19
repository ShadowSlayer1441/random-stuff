#include <stdlib.h>
#include <fcntl.h>
#include <unistd.h>
#include <stdbool.h>
#include <stdio.h>
#include <sys/file.h>

int main() {
	int fd = open("/var/home/pauls/Desktop/development/C/flock_test_file", O_RDWR);
	if (fd == -1) {
		printf("fd failed\n");
		return 1;
	}

	if (flock(fd, LOCK_EX) == -1) {
		printf("flock failed\n");
		return 1;
	}

	pause();

	flock(fd, LOCK_UN);
	close(fd);
	return 0;
}
