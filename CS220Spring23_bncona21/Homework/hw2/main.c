#include <stdio.h>
#include "i2h.h"


int main () {

	unsigned int n;



	while (1==1){
		printf("Enter an int: ");
        	scanf("%u", &n);

		 char buff[8] = {'0', '0', '0', '0', '0', '0', '0', '\0'};
        int2hex(n, buff);
        printf("%s\n", buff);

			continue;

	}

}
