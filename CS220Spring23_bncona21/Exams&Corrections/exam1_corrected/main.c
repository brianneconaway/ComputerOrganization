#include <stdio.h>
#include "fives_and_nines.h"

int main() {

	unsigned int num;


	while (num != -1){
		printf("Enter a number: ");
		scanf("%d", &num);

			if (num == -1)
				break;

			else{
			num = fives_and_nines(num);
			printf("%d\n", num);
			continue;
			}
continue;
	}

}
