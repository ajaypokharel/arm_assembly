Write a program that:

- Accepts a 18 character string from the user (why 18?  The largest value you could store in 64 bits is 2^(63)-1, which has 19 digits.  Limiting to 18 prevents us from having weird overflow issues.)
- Scans the string to determine if the input string is valid.  If valid, the program continues.  If invalid, the program re-prompts the user for valid input.
  - Examples of valid input: -123, +123, 123, 0123 
  - Examples of invalid input: 12+3, 12A, 12^
- Converts the string to an equivalent integer.  For example, if the user inputs the string "12345", the program should print the integer 12345
- The program should then print the string and the number to the console.