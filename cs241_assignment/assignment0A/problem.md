**Assignment 0A: Fibonacci redux**

Write an loop in assembly that calculates the n-th Fibonacci number, and then prints it.  Assumptions:

- The number n is in register 1 when the program starts.  You can hard-code this with a `mov x1, #5` or whatever to start.  Recall that the first and second Fibonacci numbers are 1.
- The program needs to then use a loop construction.  Note that using x0-x7 (or w0-w7) is OK here because we are not passing to another function until *after* the computation is complete.
- After computing the n-th number, print using `Fibonacci number %li is %li\n`.  This means of course that x1 needs to stay as 5 (for example) and the result of the computation should be in x2.  x0 would get the address of the format string.