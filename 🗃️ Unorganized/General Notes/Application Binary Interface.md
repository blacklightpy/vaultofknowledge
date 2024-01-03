It is an assembly level endpoint for two binary programs to communicate with one another.

For example, programs built against a dynamically linked library using it's API will need to interact with the library file (.so / DLL). This is done by using a low level interface that connect's the program's assembly instructions to that of the library file.

It can also be used for direct communication with a kernel, or with two applications - although for the latter, there's often the much convenient [[Operating ]] API.