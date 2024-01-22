#include <stdio.h>

int sequence(int n){
	int count = 0;
	while (n > 1){
	if (n % 2 == 0){
		n = n/2;
}
	else if (n % 2 != 0){
		n = (3*n+1);
}
	count = count + 1;
}
	return count;
}
