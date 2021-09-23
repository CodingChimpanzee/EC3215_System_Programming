#include <sys/types.h>
#include <dirent.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define MAXNUM 256

void sort_files(char (*filelist)[MAXNUM], int count){

	char temp[MAXNUM];

	// sort file lists in the directory in ascending order
	for (int i=1;i<count;i++){
		strcpy(temp, filelist[i]);
		int j = i - 1;
		while(strcmp(temp, filelist[j])<0 && j>=0){
			strcpy(filelist[j+1], filelist[j]);
			j--;
		}
		strcpy(filelist[j+1], temp);
	}

}

int main (int argc, char **argv) {

        DIR *dp;
        struct dirent *dirp;

        if (argc != 2) {
                fprintf(stderr, "usage: %s dir_name\n", argv[0]);
        }

        if ((dp = opendir(argv[1])) == NULL) {
                fprintf(stderr, "can't open '%s'\n", argv[1]);
                exit(1);
        }
	
	int count = 0;
	char dirstr[MAXNUM][MAXNUM];
        while((dirp = readdir(dp)) != NULL) {
                strcpy(dirstr[count], dirp->d_name);
		printf("%s\n", dirstr[count]);
		count++;
	}

	printf("======================\n");
	printf("Total file counts:%d\n", count);

	// print sorted lists
	printf("=====sorted lists=====\n");
	for (int i=0; i<count; i++){
		printf("%s\n", dirstr[i]);
	}

        closedir(dp);
        return(0);
}

