#include <stdio.h>
#include <stdlib.h>

int main()
{
	int* data = (int *)malloc(sizeof(int)*10);
	int* datahead = data;
	int i;
	for(i = 0; i < 10; i++){
		*data = i;
		printf("%d\n", *data);
		printf("Address: %p\n", data);
		if(i>0){
			printf("Previous data: %d\n", *(data - 1));
		}
		data++;
	}
	free(datahead);
	return 0;
}
