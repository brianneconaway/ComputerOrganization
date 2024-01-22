#include <stdio.h>


void diamond(){
	int n;

	while (n != -1){

	printf("Please enter a non-negative odd integer: ");
	scanf("%d", &n);


	if(n % 2 == 0 || n < 0){
		continue;
	}


	else{

	//top of diamond

	 for (int i = 1; i < n; i = i +2) {

		for(int j = 0; j < n -1 -i/2; j++){
			printf(" ");
		}

		for(int j = 0; j<i ; j++){
			printf("*");
		}

		printf("\n");
	}

	// bottom

	for (int i = n; i > 0; i = i - 2){


		for (int j = 0; j<n -1 -i/2; j++){

			printf(" ");
		}

		for (int j = 0; j < i; j++){
			printf("*");
		}

		printf("\n");
	}
	}
}
printf("Bye!\n");
}
