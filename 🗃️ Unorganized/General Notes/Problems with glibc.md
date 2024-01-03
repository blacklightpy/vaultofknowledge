glibc updates are not meant to be forwards compatible. While it doesn't go out of it's way to break forwards compatibility, newer versions of glibc add new [[Application Binary Interface|ABI]] symbols, so programs built against a newer glibc version may not work on and older glibc versions.

You can view the compatibility graph [here](https://abi-laboratory.pro/?view=timeline&l=glibc).
# Comparison with Linux kernel ABI
The Linux kernel ABI is also completely forwards compatible by principle, and it also tries to be backwards compatible as much as possible. Linus Torvalds gets very angry if someone suggests the user to change their ways.