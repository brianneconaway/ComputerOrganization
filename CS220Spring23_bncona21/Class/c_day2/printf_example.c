#include <stdio.h>

int main (int argsc, char *argv[]) {

	int n;

	printf("Enter an integer: ");
	scanf("%d", &n);

	for (int i = 1; i <= n; i++)
		printf("i is = %d    i^2 = %d\n", i, i * i);

		return 0;
}
