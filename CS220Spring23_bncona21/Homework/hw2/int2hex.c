#include <stdio.h>

void int2hex(unsigned int n, char buff[]) {


char num[] = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9',
 'A', 'B', 'C', 'D', 'E', 'F', '\0'};

	int i = 6;

	while (n > 0) {

		buff[i] = num[n & 15];
		n = n >> 4;
		i--;
	}

}



