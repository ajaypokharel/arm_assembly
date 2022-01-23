**Assignment 06: Quick arithmetic**

Write a program in assembly that:

- Loads three immediate numbers into registers (W or X): choose the numbers yourself
- Adds the three numbers
- Prints "The sum of %li, %li, and %li is %li" using printf.  Remove the L if you are using W/32 bit integers instead of X/64 bit integers.  
- Returns 0 to the operating system
- Remember that printf expects: 
  - Address of format string in X0
  - first number in W1/X1
  - second number in W2/X2
  - third number in W3/X3
  - fourth number in W4/X4 