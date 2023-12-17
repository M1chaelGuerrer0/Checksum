# Checksum
### Validating an IPv4 header via the checksum values

```
check·sum | ˈCHekˌsəm |
noun
a digit representing the sum of the correct digits in a piece of stored or transmitted 
digital data, against which later comparisons can be made to detect errors in the data.
```

 
# Assignment:
In this assignment, I wrote both a Java subroutine and a MIPS subroutine that computes a simple checksum of 8-bit integers.  This program is *based* upon the calculation of the checksum value of a IPv4 header, defined by RFC791. 

This subroutine has been modified from the formal definition of the IPv4 checksum calculation to work with an 8-bit checksum as opposed to a 16-bit checksum.  



## Test Case Examples:

   ```bash
   $ java_subroutine checksum < 156.txt
   #########################################
   # Above is the output from your program
   #########################################
   
   v0:          0; 0x00 00 00 00; 0b0000 0000 0000 0000 0000 0000 0000 0000;
     
   $ java_subroutine checksum < 229_error.txt
   #########################################
   # Above is the output from your program
   #########################################

   v0:        132; 0x00 00 00 84; 0b0000 0000 0000 0000 0000 0000 1000 0100;

   $ java_subroutine checksum < 81.txt
   #########################################
   # Above is the output from your program
   #########################################

   v0:          0; 0x00 00 00 00; 0b0000 0000 0000 0000 0000 0000 0000 0000;

   ```
You may use the make file to automate the testing of your program.

   * `make`: tests both Java and MIPS code
   * `make java_code`: tests Java code
   * `make mips_code`: tests MIPS code
   
