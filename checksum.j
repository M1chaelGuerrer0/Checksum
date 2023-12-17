	public static int checksum() {
		
		int sum = 0;
		int header_checksum;
		final int max_int = 255;
		int quotient;
		int remainder;
		int checksum;
		int input;

		for(int i = 0; i < 10; i++) {
			mips.read_d();
			input = mips.retval();
			sum += input;
		   	if(i == 5) {
	   			header_checksum = input;
	   		}
		}
		
		sum -= header_checksum;
		quotient = sum / (max_int + 1);
		remainder = sum % (max_int + 1);
		checksum = max_int - (quotient + remainder);

		if(checksum == header_checksum) {
			return 0;
		}
		else {		
			return checksum;
		}
	}
