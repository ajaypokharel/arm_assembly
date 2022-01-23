This assignment builds on Assignment 02.

- Modify your assignment 02 program so that instead of working with a hard-coded string, the user is prompted to type a string and this is input using scanf.  Limit the size of the string to 32 bytes, so 31 characters + the null terminator.  (Hence, use scanf with %31s, but allocate 32 bytes for your strings).
- Also prompt the user to select which function to use to modify the string, either the built-in C function or the one you wrote.  For example, you could prompt the user with "Enter 1 to use the built-in function, or 2 for my function."  You can either accept this as a single character input/length 1 string, or as a number; your choice.
- For the option prompt, if the user enters something other than 1 or 2, the program should re-prompt the user for a valid input.  Definitely use a while loop of some sort here.
- After the user gives a valid input, the program should print the original string along with the version modified by the function the user selected.  Hence, the program will only print two strings, not three like in Assignment 02.