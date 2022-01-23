**Assignment 07: MOVN/MOVZ/MOVK** 

Write a program in assembly that:

- - Uses MOVZ and MOVK to load the number 0xFEEDCADEDEADBEEF into X1, then prints this number in hex (so the format string needs %lx in it)
  - Uses a single instance of MOVN to load the number -1832 into W1, then prints this number in decimal (so the format string needs %d or %i).  To do this, you need to first think carefully about what the two's complement representation of 1832 and -1832 as 32 bit signed integers, and how the MOVN command will work.  
  - After you get the above working, look at the listing file along with the ARM instruction spreadsheet / thousand page PDF.  Make sure you are content with how each MOVN/MOVZ/MOVK instruction is actually encoded.  (There's nothing to turn in for this part, but do it for the good of your soul)