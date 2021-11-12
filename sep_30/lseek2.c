#include <unistd.h>
#include <fcntl.h>
#include <sys/types.h>
#include <stdio.h>
#include <string.h>

int main() {

	int fd;
	off_t pointer;

	fd = open("lseek.txt", O_RDWR | O_CREAT, 0644);
	pointer = lseek(fd, (off_t)0, SEEK_CUR);

	printf("first position: %d\n", pointer);
	write(fd, "lseek", strlen("lseek"));

	close(fd);

	fd = open("lseek.txt", O_RDWR | O_APPEND);
	pointer = lseek(fd, (off_t)0, SEEK_CUR);

	printf("last position : %d\n", pointer);
	write(fd, "lseek", strlen("lseek"));

	off_t len = lseek(fd, 0, SEEK_END);
	printf("length of file: %d\n", len);

	close(fd);
}
