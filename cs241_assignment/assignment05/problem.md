Assignment 05: Hello, world! redux

Step 1: take Dr. C's example code from class (here: hello1.asm  Download hello1.asm).  Modify the string to be your name.

Step 2: assemble the code to produce a .o file, and then use GCC to link it and produce an executable.  Also assemble it to produce a listing file as before.

Step 3: execute your code to make sure it works.

Step 4: make sure you assemble with the -g flag, and link with the -static and -g flags.  Then, run GDB.  Set a breakpoint for main (break main), and then step through the code line by line.  Observe what happens to the registers, PC, LR, FP, SP, and data on the stack.  You can get info on register contents with "info registers" or `"info r x0"` to see only a specific register.  You can examine the stack with x/8xw $sp...change the 8 to another number to see more data at once.  When the printing starts happening, use "continue" to finish the program.