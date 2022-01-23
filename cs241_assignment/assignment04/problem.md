This assignment was locked Dec 17, 2021 at 11:59pm.

Structs, structs, structs!

In class, we defined an example struct of a 2d point, that had x and y coordinates along with a character as a label.

- Write a function that accepts as argument two pointers to a point struct, and returns the distance between the two points as a float.  For simplicity, change your point struct to have the coordinates be floats instead of ints.  You'll want to use the math.h header to get math functions like square roots.
- Make a new struct, "triangle", which is made up of three point structs.  Then make a function that accepts a pointer to a triangle struct and returns the area of the triangle, using Heron's formula ([https://en.wikipedia.org/wiki/Heron%27s_formula (Links to an external site.)](https://en.wikipedia.org/wiki/Heron's_formula)).
- UPDATED NOTE: for sqrt() and pow() to work, add the -lm (lower case L M) flag to GCC when you compile.  We won't have this issue when we work in assembly.