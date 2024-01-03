glibc updates are not meant to be forwards compatible. While it doesn't go out of it's way to break forwards compatibility, newer versions of glibc add new ABI symbols, so programs built against a newer glibc versoin may not work on and older glibc versions.

