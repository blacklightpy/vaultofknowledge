A build system defines a standard for build scripts to automate building of multiple packages in a complex project. 

A build script generator is used to automatically generate the build scripts for a project containing one or more build systems.

Basically, a build system in an abstraction over manually compiling, and a meta-build system is an abstraction over build systems.

Generally, meta-build systems (GNU Autotools, CMake, Meson, Bazel, etc.) can also invoke the build systems by itself, which would be appropriate if the project contains multiple build systems (GNU make, ninja, setuptools, etc.)
# List of Build Systems
## Build Script Generators
- GNU Autotools (./configure; make)
- Cmake - C Based (cmake, ccmake, cmake-gui)
- Meson - Python based
- Ant
- Bazel - Java based
- Poetry - Python based
## Build Systems
- Make
- Ninja (default in Meson)
- setuptools (Python's default, less recommended)
- Poetry-core (Only option in Poetry)