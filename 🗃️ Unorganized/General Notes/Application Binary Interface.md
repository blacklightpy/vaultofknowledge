It is a low level endpoint for a programs to communicate with another.

For example, programs built against a dynamically linked library using it's API will need to interact with the library file (.so / DLL). This is done by using a low level interface that loads the relevant parts of the library file by calling it's memory location.

It can also be used for direct communication with a kernel, or with two applications - although for the latter, there's often the much convenient OS API.