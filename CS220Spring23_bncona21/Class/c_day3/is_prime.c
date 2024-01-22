//Write a function is_prime that takes an integer n and returns false if n is not
//prime, otherwise true

//0 is false and true

#define TRUE 1
#define FALSE 0

int is_prime(int n){
	for (int i = 2; i <= n/2; i++)
		if (n% i ==0)
			return FALSE;
	
return TRUE;

}
