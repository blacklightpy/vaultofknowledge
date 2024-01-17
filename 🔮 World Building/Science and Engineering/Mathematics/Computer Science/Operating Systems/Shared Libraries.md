A shared library is simply a compiled executable much like a program. They are used by programs pretty much like a normal library, to carry out operations facilitated by its [[Application Programming Interface|API]]. However shared libraries are shared so that all the programs making use of the same library need not bundle the entirety of the library with their build. The reason for this is simply to save space.

Shared libraries is the same fashion as executables. In fact, if an executable can provide a [[symbol table]] within itself, it can be accessed as an [[Application Binary Interface|ABI]], making it a shared library.

Basically, the compiler compiles the source code and into object files. The linker statically links all the libraries and executables together, leaving the executable

Nowadays, both libraries and programs use the same loaders to keep uniformity. Once both are loaded into the memory, the program can refer to the symbol table and map the ABI endpoints to the memory locations of the shared library.

**Needs more clarity.**
# Related topics
- Symbol Table
- Debugging Symbols
- Shared Memory
- Position Independent Executables (PIEs)
# Guide (on how the linking and loading processes take place):
- https://medium.com/ax1al/a-brief-info-on-linker-loader-symbol-symbol-tables-2fed729eb490
- https://blog.ramdoot.in/linkers-and-symbol-tables-40f85f6df3c9
# How shared libraries are loaded in Linux
- https://news.ycombinator.com/item?id=32473099
- https://www.akkadia.org/drepper/dsohowto.pdf
- https://stackoverflow.com/questions/5130654/when-how-does-linux-load-shared-libraries-into-address-space
# Notes on Shared Libraries in Apache NuttX RTOS
- https://cwiki.apache.org/confluence/display/NUTTX/Kernel+Modules+vs+Shared+Libaries