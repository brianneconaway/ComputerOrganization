void digit_freq(int n, int freq[]) {

	int num;
	int length = 10;

	for (int i = 0; i < 10; i++){
		freq[i] = 0;
	}
	while (n > 0) {

		num = (n % 10);
		freq[num]++;
		n = n / 10;
		}
}
