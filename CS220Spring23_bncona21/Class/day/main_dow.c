#include <stdio.h>
#include "dow.h"
#include <stdlib.h>
//extern int dow(int day, int month, int year);

int main(int argc, char *argv[]) {

	int day = dow(atoi(argv[1]), atoi(argv[2]), atoi(argv[3]));

	char *days[] = {"Sunday", "Monday", "Tuesday", "Wedesday", "Thursday", "Friday", "Saturday"};
	printf("%s\n", days[day-1]);

}
