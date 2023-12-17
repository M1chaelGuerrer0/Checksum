.text
	.globl checksum
		.macro read_d()
        	nop                     # Reads from stdin, a decimal (%d) number
        	li $v0, 5
        	syscall                 
        	nop                     # The value is now in $v0
		.end_macro
			# $t0 : i
			# $t1 : sum
			# $t2 : header_checksum
			# $t3 : max_int
			# $t4 : quotient
			# $t5 : remainder
			# $t6 : checksum
			# $t7 : temp
			# $t8 : mips.retval()
			# $v0 : result

checksum:	nop							#	public static int checksum() {		
										#		int $t0;
										#		int $t1;
			li $t1, 0					#		$t1 = 0;
										#		int $t2;
			li $t2, 0					#		$t2 = 0;
										#		final int $t3;
			li $t3, 255					#		$t3 = 255;
										#		int $t4;
			li $t4, 0					#		$t4 = 0;
										#		int $t5;
			li $t5, 0					#		$t5 = 0;
										#		int $t6;
			li $t6, 0					#		$t6 = 0;
										#		int $t7;
			li $t7, 0					#		$t7 = 0;
										#		int $t8;
			li $t8, 0					#		$t8 = 0;
										#		int $v0;
			li $v0, 0 					#		$v0 = 0;
init:		nop							#		;
			li $t0, 0					#		$t0 = 0;
loop:		bge $t0, 10, done			#		for(;$t0 < 10;) {
body:			nop						#			;
				read_d()				#			mips.read_d();
				move $t8, $v0			# 			$t8 = mips.retval();
				add $t1, $t1, $t8		#			$t1 += $t8;
ifeq:				bne $t0, 5, alt	 	#			if($t0 == 5) {
cons:				nop				   	#				;
					move $t2, $t8	   	#				$t2 = $t8;
					b end				#				// goto end	
										#			} 	
alt:			nop						#			;
					b end 				#			// goto end
end:			nop						#			;
					b next				#			// goto next
next:			nop						#			;	
				addi $t0, $t0, 1 		#			$t0++;	
				b loop					#			continue loop;	
										#		}
done:		nop							#		;		
			sub	$t1, $t1, $t2			#		$t1 -= $t2;
			addi $t7, $t3, 1			#		$t7 = $t3 + 1;
			div $t1, $t7 				#		$t4 = $t1 / ($t7);
			mflo $t4					
			div $t1, $t7				#		$t5 = $t1 % ($t7);	
			mfhi $t5	
			add $t7, $t4, $t5			#		$t7 = $t4 + $t5
			sub $t6, $t3, $t7			#		$t6 = $t3 - ($t7);
equal: 		bne $t6, $t2, isnt			#		if($t6 == $t2) {
is:				nop						#			;
				li $v0, 0				#			$v0 = 0;
				jr $ra					#			return $v0;
				
										#		}
isnt:		nop							#		else {
				move $v0, $t6			#			$v0 = $t6;
				jr $ra 					#			return $v0;
				
										#		}

# Task 1 complete: Tue Oct 10 21:59:25 PDT 2023

# Task 2 complete: Tue Oct 10 22:24:47 PDT 2023


# Task 3 complete: Thu Oct 12 10:59:15 PDT 2023
