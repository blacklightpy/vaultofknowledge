# Bookshelf Analogy
A CPU Instruction Set Architecture is like a bookshelf pattern.

An Operating System is like a pattern of arranging and retrieving books.

So a bookshelf can hold books arranged in different patterns.

The compiler arranges books in a specific pattern within the bookshelf.

A runtime retrieves the requested books from the bookshelf because it knows the pattern in which the books are to be retrieved.

Typically OS-default runtimes only understand the calling conventions of the specific operating system, and even that is built for a specific architecture.

Java and similarly interpreted languages are an exception to this, as they are run atop virtual machines with backends for different bare-metal CPUs and OSes.




Candidates: LLVM, WASM, and the new Cosmopolitan C Library.

Also related: Developing a Web Browser (Layout Renderer, Style Renderer, Script Processer)