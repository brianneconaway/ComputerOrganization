
extern int sequence (int n);

long long int longest(){

	int length = 0;
	int longest = 0;
	for (int i = 1; i < 1000000; i++){
		if (sequence(i) > length){
		length = sequence(i);
		longest = i;
}
}

	return longest;

}
