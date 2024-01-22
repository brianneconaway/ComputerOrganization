#include <stdio.h>
#include <math.h>

int mypow(int x, int y){


	if (y == 0)
		return 1;

	else if (y % 2 == 0){
		int p = mypow(x, y/2);
		return p*p;
	}
	else {
	int a = mypow(x, y-1);
	return x * a;
}
}
