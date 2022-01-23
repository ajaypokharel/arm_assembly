Write a program that:

   Defines a string of your choice, say "Hello, world!" or "Dr. McKinney is the coolest person on the planet!".  Make two copies of the string, so say have "string1", "string2", and "string3" that at first are all the same.

   Write two functions:

       One that accepts the pointer to the string and the string's length, and converts all lower case letters to upper case (or vice-versa, upper to lower case - I don't care which one you pick).  This function should change string2.
    
        *Another version that does the same thing but doesn't take the string length in as a parameter: i.e. you'll have to use a different method for looping through the string.  This function should change string3.

For both functions, you'll have to look at the range of values in hex for the lower case and upper case letters.  Look at an ASCII table.  You can define numbers in hex in C by doing something like "int hexnum = 0x32;", which is different than "int num = 32;".  

Your `main()` function should run both sub functions and print the output of each version.  Also print the pointers to the original string (string1) and the two modified ones (string2 and string3).

You can hard-code the string.