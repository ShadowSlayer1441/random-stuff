#include <stdio.h>
#include <signal.h>

void handler(int signal) {
	printf("Signal received.");
}

int main() {
	signal(SIGUSR1,handler);
	printf("Process started\n");
	printf("usrsig min:%d, usrsig max:%d\n",SIGRTMIN,SIGRTMAX);
	int num = 0;
	while(0 == 0) {
		num += 1;
	}
	return num;
}
