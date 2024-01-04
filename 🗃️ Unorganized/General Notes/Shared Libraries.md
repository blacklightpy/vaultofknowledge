A shared library is simply a compiled executable much like a program. They are used by programs pretty much like a normal library, to carry out operations facilitated by its [[Application Programming Interface|API]]. However shared libraries are shared so that all the programs making use of the same library need not bundle the entirety of the library with their build. The reason for this is simply to save space.

Shared libraries are generated as object files

Nowadays, both libraries and programs use the same loaders to keep uniformity. Once both are loaded into the memory, the program can refer
