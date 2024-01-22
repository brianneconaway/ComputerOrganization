#include <stdio.h>
#include <stdlib.h>
#include "time.h"

extern int cointoss(int n);


int main(int n) {

	srand(time(NULL));

	printf("%d\n", cointoss(n));


}
