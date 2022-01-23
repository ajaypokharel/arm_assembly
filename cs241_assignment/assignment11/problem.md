Using Logisim, make the following components of an 8-bit ALU.

- An 8-bit addition unit, that takes in a carry along with two 8-bit inputs, and returns an 8-bit sum and a carry.  Thus, you'll need to first build a full adder and then use eight copies of it
- An 8-bit bitwise unit (you may choose: OR, AND, or XOR...the idea is similar for all of them)
- An 8-bit equality checker (using eight NXOR gates and an eight-input AND gate: the eight NXOR results go into the eight-input AND gate, and a single bit comes out)
- An 8-bit barrel shifter (see here: [https://tams.informatik.uni-hamburg.de/applets/hades/webdemos/10-gates/60-barrel/shifter8.html (Links to an external site.)](https://tams.informatik.uni-hamburg.de/applets/hades/webdemos/10-gates/60-barrel/shifter8.html)) that has **one** 8-bit input and a 3-bit shift amount input, along with an 8-bit output  This will implement the LSL operation.  With a few modifications we could make it also handle LSRs, but don't worry about that for now.

Turn in a single .circ file.