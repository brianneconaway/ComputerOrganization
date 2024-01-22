#include <stdio.h>
//#include "sum3or5.c"
//#include "sequence.c"
//#include "longest.c"
//#include "diamond.c"

extern int diamond();
extern int sum3or5(int n);
extern int sequence(int n);
extern int longest();


int main(){

	printf("Sum of 16 = %d \n", sum3or5(16));
	 printf("Sum of 1000 = %d \n", sum3or5(1000));
	 printf("Sum of 10 = %d \n", sum3or5(10));

	printf("Sequence of 10 = %d \n", sequence(10));
	 printf("Sequence of 5 = %d \n", sequence(14));

	printf("Longest = %d \n", longest());
int n;

	//printf("Enter an odd non-negative number: ");
        //scanf("%d", &n);
	diamond();







}
