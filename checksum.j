	public static int checksum() {
		// $t0 : i
		// $t1 : sum
		// $t2 : header_checksum
		// $t3 : max_int
		// $t4 : quotient
		// $t5 : remainder
		// $t6 : checksum
		// $t7 : temp
		// $t8 : mips.retval()
		// $v0 : result
		int $t0;
		int $t1;
		$t1 = 0;
		int $t2;
		$t2 = 0;
		final int $t3;
		$t3 = 255;
		int $t4;
		$t4 = 0;
		int $t5;
		$t5 = 0;
		int $t6;
		$t6 = 0;
		int $t7;
		$t7 = 0;
		int $t8;
		$t8 = 0;
		int $v0;
		$v0 = 0;

init:	;
		$t0 = 0;
loop:	for(;$t0 < 10;) {
body:		;
			mips.read_d();
			$t8 = mips.retval();
			$t1 += $t8;
ifeq:	   		if($t0 == 5) {
con:			;
	   			$t2 = $t8;
	   			// goto end
	   		}
alt:		;
			// goto end
end:		;
			// goto next
next:		;	
			$t0++;	
			continue loop;	
		}
done:	;		
		
		$t1 -= $t2;
		$t7 = $t3 + 1;
		$t4 = $t1 / ($t7);
		$t5 = $t1 % ($t7);
		$t7 = $t4 + $t5;
		$t6 = $t3 - ($t7);

equals:	if($t6 == $t2) {
is:			;
			$v0 = 0;
			return $v0;
		}
		else {
isnt:		;	
			$v0 = $t6;
			return $v0;

		}
	}

// Task 1 complete: Tue Oct 10 21:59:25 PDT 2023

// Task 2 complete: Tue Oct 10 22:24:47 PDT 2023

