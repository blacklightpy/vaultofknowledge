glibc updates are not meant to be forwards compatible. While it doesn't go out of it's way to break forwards compatibility, newer versions of glibc add new [[Application Binary Interface|ABI]] symbols, so programs built against a newer glibc version may not work on and older glibc versions.

You can view the compatibility graph [here](https://abi-laboratory.pro/?view=timeline&l=glibc).