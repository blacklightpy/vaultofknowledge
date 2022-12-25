Create the code
Add additional code to bundle the contents of the source file to the executable, and add a command parameter to print this code file out.

This will result in an executable that has the size of the intended program + size of the source + additional size to handle the printing.

The program compiled from the source it provides will do the same thing in recursion until the part of the code concerned with printing the source code is removed.

Bonus: Additional comments can be added to highlight the lines of code responsible for printing the source code, which enables removing this functionality.