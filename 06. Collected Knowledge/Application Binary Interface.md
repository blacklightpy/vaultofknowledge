It is a low level endpoint for a programs to communicate with another.

For example, programs built against a dynamically linked library using it's API will need to interact with the library file (.so / DLL). This is done by using a low level interface that loads the relevant parts of the library file by calling it's memory location.

It can also be used for direct communication with a kernel, or with two applications - although for the latter, there's often the much convenient OS [[Application Programming Interface|API]].

A common use of the ABI is to make use of a calling convention, which is a set of routines performed, for example by a [[Shared Libraries|shared library]] to make system calls to the kernel. In this case, the compiler translates the source code APIs to relevant ABI calls. Some of the calls are direct system calls (which is the kernel userspace ABI), and if the program makes use of shared libraries, those are accessed by loading the shared library and calling the ABI endpoints defined in its symbol table.

A kernel also has a set of userspace ABI endpoints called system calls, which when called by a program translates the call into the relevant CPU instructions according to the calling conventions of the kernel. The kernel may use some ABIs internally to carry out these operations, but those are not relevant to the end-user.