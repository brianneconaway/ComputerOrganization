#include "fives_and_nines.h"

unsigned int fives_and_nines(unsigned int n){

        int num = 0;
	int mod10;


	 while(n > 0) {

	mod10 = n % 10;
        n /= 10;

        if(mod10 == 5)
            num++;

	else if(mod10 == 9)
		num++;
    }

    return num;


}

