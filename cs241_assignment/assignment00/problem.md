This assignment has a few parts: some of which you will complete in class, and some of which you will need to complete on a Pi.

For all parts, please see the following example C file: 

Part 1: Native compile on Intel hardware.  
    Edit the C file to print your name instead of "Hello, world!".
    Assemble it for Intel assembly using gcc, with output file hello-intel.s
    Produce a listing file, hello-intel.lst
    Compile to an executable form, hello-intel, and test that it executes correctly.

Part 2: Cross compile to ARM architecture, on Intel hardware.
    Use the same C file as above (to print your name).
    Cross compile it to ARM architecture using aarch64 versions of GCC and AS, generating hello-arm-cross.s, hello-arm-cross.lst, and the executable hello-arm-cross.
    Test the hello-arm-cross on the Intel architecture using QEMU.

Part 3: Native ARM (on a Pi)
    Use the same C file as above (to print your name)
    Compile natively on the Pi using GCC and AS, to produce hello-arm.s, hello-arm.lst, and the executable hello-arm.
    Test that your executable hello-arm works on the Pi.
    Test that your cross-compiled executable hello-arm-cross works on the Pi.  Note: you will likely need to change file permissions on hello-arm-cross after you copy it to your pi (especially if you use a USB memory stick for this).  Do so with the terminal command "chmod +x hello-arm-cross" and then execute it.

Part 4: put it all together.  
    Use either the graphical file system browser or the console to produce a .tar (or .gz or .tar.gz) file containing all of the above files and code.  Submit this single file to Canvas.
    

Note: it is of course possible to cross compile for many different target architectures from many different source architectures.  Here we've limited ourselves to native Intel, native aarch64, and aarch64 target from Intel host.