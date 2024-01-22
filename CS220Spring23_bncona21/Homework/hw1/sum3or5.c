// Make the multiples of n that are 3 or 5

#include <stdio.h>

int sum3or5(int n){
	int count = 0;
	for (int i = 0; i < n; i++){
		if (i % 3 == 0 || i % 5 == 0)
			count = count + i;

}

return count;

}
		
