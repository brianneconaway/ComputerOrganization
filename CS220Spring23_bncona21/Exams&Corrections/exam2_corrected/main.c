#include <stdio.h>
#include <stdlib.h>
#include "time.h"
#include <sys/random.h>
#include "cointoss.h"

int main(int argc, char *argv[]) {

        char buff[4]; //hold random bits
         //have seed point to buff as an unsigned int
        unsigned int *seed = (unsigned int *) buff;
        getrandom(buff, 4, 0);
        srand(*seed);
	rand() % 2;

	//srand(time(NULL));
        printf("%d\n", cointoss(atoi(argv[1])));


}





