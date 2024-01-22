#include <stdio.h>
#include <stdlib.h>
#include "digit_freq.h"

int main(int argc, char *argv[]) {

	int freq[10];
	for (int z = 0; z < 10; z++){
		freq[z] = 0;
	}


	 //Displays the frequency of each element present in array

	digit_freq(atoi(argv[1]), freq);

    printf(" Digit | Frequency\n");
    printf("---------------------\n");

	for (int i = 0; i < 10; i++){
		printf("%d          %d\n", i, freq[i]);
	}

    return 0;
}

