#include <sys/types.h>
#include <sys/stat.h>
#include <stdio.h>
#include <stdlib.h>

int main() {
	struct stat sbuf;

	if (stat("file", &sbuf) == -1) {
		perror("can't stat file");
		exit(EXIT_FAILURE);
	}

	// turn off owner read permissions and turn on setgid
	if (chmod("file", (sbuf.st_mode & ~S_IRUSR) | S_ISGID) == -1) {
		perror("can't chmod file");
		exit(EXIT_FAILURE);
	}

	// set absolute mode to rw-r--r--
	if (chmod("file1", S_IRUSR | S_IWUSR | S_IRGRP | S_IROTH) == -1) {
		perror("can't chmode file!!");
		exit(EXIT_FAILURE);
	}
	exit(EXIT_SUCCESS);
}
