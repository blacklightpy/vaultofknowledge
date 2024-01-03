It is a low level endpoint for a programs to communicate with another.

For example, programs built against a dynamically linked library using it's API will need to interact with the library file (.so / DLL). This is done by using a low level interface that loads the relevant parts of the library file by calling it's memory location.

It can also be used for direct communication with a kernel, or with two applications - although for the latter, there's often the much convenient OS [[Application Programming Interface|API]].

A common use of the ABI is to make use of a calling convention, which is a set of routines performed, for example by a program or a shar with the kernel. The kernel also has the ABI known as system calls, which when called by a program translates the call into the relevant CPU instructions according to the calling conventions of the kernel.