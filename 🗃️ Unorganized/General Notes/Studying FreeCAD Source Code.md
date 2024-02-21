Before reviewing source code, let's talk about what a source code is.

A program's source code defines the functionality of the program, which the computer uses to run it.
We generally write programs in high-level languages which are then converted to CPU-specific assembly instructions, which are internally converted to operations by the computer. The assembly instructions are represented as words for humans, and as bytes for computers.

A software project usually consists of multiple **source files**, in order to separate the functionality, **resources** like images, **external libraries** to extend functionality or enable system-level integration, the source code **documentation** and the **build configuration**. The source files can consist of header files and source files, as well as source files from other languages. Typically, source files from multiple languages interact with each other by using storage or interfaces like inter-process communication or a common runtime. The external libraries can either be open-source, or closed source dynamically linked libraries. The build configuration files set the default values for the build system with which the code is to be built with. The build system is a set of automated scripts that handle the steps involved in compiling projects with multiple source files. The build system handles versioning and computing dependency graphs. The project may also contain pre-install and post-install scripts for managing certain configurations.

To keep track of code changes during development and for collaboration, a version control system is used. Other aspects in the software development workflow include issue trackers and communication channels like mailing lists, forums and chat networks.
# The structure of FreeCAD Source

FreeCAD uses git for version control, and is hosted on GitHub.

The source code is mainly split into two categories: App and Gui.
App contains the part of FreeCAD that can be run without the Gui.
Gui contains the 3D Viewer.

FreeCAD Makes use of **OpenCASCADE** for creating and managing solid geometry, **Coin3D** for the viewport, **Python** for API and **Qt** for GUI.

FreeCAD is mostly built in C++, but it also makes heavy use of Python for providing APIs.
Almost every C++ feature has a Python binding, and it is a part of the core philosophy of FreeCAD development to do so. For this, CPython interfacing tools and PythonCXX are used throughout the project.
Some of the high-level parts of FreeCAD are also built using Python.

Most of FreeCAD's functionality is implemented as **modules**. Without modules, FreeCAD can only open and save files. Modules can also depend on other modules for functionality. Most modules depend on the **Part** module, which has the core solid modelling capabilities. Modules can also directly depend on OpenCASCADE, but they often prefer to make use of the functionalities of the Part module.

Modules are always initialized from Python, even if they are written fully in C++.

Python and Qt are heavily used in the core and almost all of the modules. OpenCASCADE Technology is used mainly in the App world, and Coin3D exclusively in the Gui world. A basic understanding of OpenCASCADE Technology is necessary to do any geometry-related work in FreeCAD. Other specific modules can make use of any specific libraries, as there are no restrictions on that.

FreeCAD's document objects, which are all the objects contained in a FreeCAD Document, are what appear in the tree view in the GUI and in FreeCAD.ActiveDocument.Objects() in Python. They may or may not have any 3D data and the may or may not display anything in the 3D view. They are always seperated in the App and GUI parts. Standard geomterical objects, such as those found in Part and PartDesign, have their OpenCASCADE based geometry defined in their App counterpart, while the Gui counterpart creates a Coin3D representation of that geometry, which will be then inserted in to the main Coin3D scene graph of the 3D View. The Gui counterparts are also known as the View Providers.

The folder structure is as follows:
1. App - Contains the console-mode application and defines the basic structures and base classes for the document objects, which are used by the modules to build their own.
2. Base - Contains the core functionality which is used everywhere in FreeCAD. 3D Vectors, matrices, units, placements, etc.
3. Gui - Contains the GUI-mode application, defines the 3D view and contains many tools and functions to be used by workbenches, and defines base classes for view providers.
4. Doc - Contains an all-in-one Qt help file generated from the FreeCAD Wiki.
5. Mod - Contains all the modules, further seperated into App and Gui. Python modules don't follow this distinction very well.

Other folders and files include:
- Tools - Some addon functionality tools
- Main - Main classes for App, Gui and Python?
- XDGData - XDG definitions for installation
- OS Specific folders
- zipios++ - ZIP utility
- 3rdParty - 3rd Party Integrations
- Ext - Ext/freecad includes the freecad namespace packages for Python
- CXX - Enables writing Python extensions for C++ features
- cMake - cMake includes local modules and cMake/FreeCAD_Helpers includes macros
- cMakeLists.txt and .cmake files - Used by cmake meta-build system

**NOTE:** Libraries are called by source files by include statements. For example, zipios++ library components are called by Base/ZipHeader.cpp by `#include<zipios++/zipinputstream.h>`
# Build and Runtime Dependencies
[This](https://forum.freecad.org/viewtopic.php?style=8&p=678323#p678323) was my old post from last year when I worked on mapping these out.
After so long, I figured out the list of dependencies from the Void Linux build template. Here they are:

**Host side build dependencies (for cross-compiling):**
- Doxygen
- GraphViz
- Pkg-config
- Python3 SetupTools
- SWIG (A C++-Python Binding generator; Apparently used by IfcOpenShell)

**Target specific build dependencies:**
- Boost Development Files (Some distributions may need to specify Boost libraries, I listed what I think are needed below)
	- Boost.Headers
	- Boost.ProgramOptions
	- Boost.System
	- Boost.Regex
	- Boost.Thread
	- Boost.Graph
	- Boost.MPI Python 3 Bindings
	- Boost.Python3
	- Boost.FileSystem

- Coin3D 3 Development Files (OpenInventor's OpenGL 3D Library, used instead of OCCT Viewer)
- Coin3D 3 Docs

- Double Conversion Development Files
- Eigen (A Linear Algebra Library)
- GLEW Development Files
- HDF5 Development Files (A data storage format)
- JSONCPP Development Files
- LZ4 Library Development Files
- MED Library Development Files (SALOME's data format to store meshes, based on HDF5)
- NetCDF Development Files (A scientific data format)
- OCCT Development Files (The OpenCASCADE Technology CAD Geometric Kernel)
- OpenMPI Development Files (A parallel computing library)

- Python 3
- Python 3 Pivy Module
- PySide2 Python 3 Development Files (PySide gives Qt API for Python)
- PySide2 Tools

- Qt5 Development Files
- Qt5 SVG Development Files
- Qt5 Tools Development Files
- Qt5 WebKit Development Files
- Qt5 XMLPatterns Development Files

- Shiboken2 Library Development Files (Generates Python bindings for Qt)

- Space Navigator Library Development Files (FOSS Drivers for 3DConnection CAD Mice)
- VTK Development Files (A scientific visualization toolkit)
- Xerces C++ Library Development Files (Apache Xerces C++ XML Library)
- zlib Development Files (zlib is the reference implementation of the Deflate compression algorithm)

**Runtime dependencies:**
- Python 3 Matplotlib Module
- Python 3 PySide2 WebEngine Module
- Python 3 Pivy Module

## Additional Dependency Notes
These are not listed in the Void Linux templates, but I found them elsewhere as I had listed in the original post. They maybe useful for certain configurations, perhaps. So I'm keeping notes about them too.

**Dependencies pre-bundled with FreeCAD source code:**
- Quarter (Coin3D binding to Qt)

**Debugging Build Dependencies:**
- GNU Debugger

**Unknown Dependencies (I saw in lists)**
- F2C (Fortran to C Converter)
- DOS2UNIX (DOS to UNIX text file converter; Also listed in Fedora and OBS FreeCAD.spec)
- HDF5 OpenMPI 4 Development files
- OpenCV Development Files
- FreeGLUT Development Files
- X Input Libraries
- Netgen Development files

*Listed in OBS for openSUSE*
- Matplotlib Qt5 Python 3 Module
- GitPython Python 3 Module

*From FreeCAD Wiki*
- FreeType2 Development Files (From the FreeCAD Wiki)
- GNU Triangulated Surface Library
- KDTree++ (For Sorting; on Debian and Fedora FreeCAD.spec; Looks like is included in FreeCAD)  

## Table of Dependencies

**Host side build dependencies (for cross-compiling):**

| Package Name | Void Linux | Arch Linux | Ubuntu / Debian | Fedora | openSUSE Tumbleweed | Remarks |
| ---- | ---- | ---- | ---- | ---- | ---- | ---- |
| Doxygen |  |  |  |  |  |  |
| GraphViz |  |  |  |  |  |  |
| Pkg-config |  |  |  |  |  |  |
| Python3 SetupTools |  |  |  |  |  |  |
| SWIG |  |  |  |  |  | A C++-Python Binding generator; Apparently used by IfcOpenShell |

**Target specific build dependencies:**

| Package Name | Void Linux | Arch Linux | Ubuntu / Debian | Fedora | openSUSE Tumbleweed | Remarks |
| ---- | ---- | ---- | ---- | ---- | ---- | ---- |
| Boost - Development Files (If AIO) |  |  |  |  |  |  |
| Boost.Headers |  |  |  |  |  |  |
| Boost.ProgramOptions |  |  |  |  |  |  |
| Boost.System |  |  |  |  |  |  |
| Boost.Regex |  |  |  |  |  |  |
| Boost.Thread |  |  |  |  |  |  |
| Boost.Graph |  |  |  |  |  |  |
| Boost.MPI Python 3 Bindings |  |  |  |  |  |  |
| Boost.Python3 |  |  |  |  |  |  |
| Boost.FileSystem |  |  |  |  |  |  |
| Coin3D 3 Development Files |  |  |  |  |  | OpenInventor's OpenGL 3D Library, used instead of OCCT Viewer |
| Coin3D Docs |  |  |  |  |  |  |
| Double Conversion - Development Files |  |  |  |  |  |  |
| Eigen |  |  |  |  |  | A Linear Algebra Library |
| GLEW - Development Files |  |  |  |  |  |  |
| HDF5 - Development Files |  |  |  |  |  | A data storage format |
| JSONCPP - Development Files |  |  |  |  |  |  |
| LZ4 Library - Development Files |  |  |  |  |  |  |
| MED Library - Development Files |  |  |  |  |  | SALOME's data format to store meshes, based on HDF5 |
| NetCDF - Development Files |  |  |  |  |  | A scientific data format |
| OCCT - Development Files |  |  |  |  |  | The OpenCASCADE Technology CAD Geometric Kernel |
| OpenMPI - Development Files |  |  |  |  |  | A parallel computing library |
| Python 3 |  |  |  |  |  |  |
| Python 3 Pivy Module |  |  |  |  |  |  |
| PySide 2 - Python 3 Development Files |  |  |  |  |  | PySide gives Qt API for Python |
| PySide 2 Tools |  |  |  |  |  |  |
| Qt5 - Development Files |  |  |  |  |  |  |
| Qt5 SVG - Development Files |  |  |  |  |  |  |
| Qt5 Tools - Development Files |  |  |  |  |  |  |
| Qt5 WebKit - Development Files |  |  |  |  |  |  |
| Qt5 XMLPatterns - Development Files |  |  |  |  |  |  |
| Shiboken2 Library - Development Files |  |  |  |  |  | Generates Python bindings for Qt |
| Space Navigator Library - Development Files |  |  |  |  |  | FOSS Drivers for 3DConnection CAD Mice |
| VTK - Development Files |  |  |  |  |  | A scientific visualization toolkit |
| Xerces C++ Library  - Development Files |  |  |  |  |  | Apache Xerces C++ XML Library |
| zlib - Development Files |  |  |  |  |  | zlib is the reference implementation of the Deflate compression algorithm |


**Runtime dependencies:**

| Package Name | Void Linux | Arch Linux | Ubuntu / Debian | Fedora | openSUSE | Remarks |
| --- | --- | --- | --- | --- | --- | --- |
| Python 3 Matplotlib Module |  |  |  |  |  |  |
| Python 3 PySide2 WebEngine Module |  |  |  |  |  |  |
| Python 3 Pivy Module |  |  |  |  |  |  |
#### Additional Dependencies

| Package Name | Void Linux | Arch Linux | Ubuntu / Debian | Fedora | openSUSE Tumbleweed | Remarks | Category |
| ---- | ---- | ---- | ---- | ---- | ---- | ---- | ---- |
| Quarter | \<INCLUDED\> | \<INCLUDED\> | \<INCLUDED\> | \<INCLUDED\> | \<INCLUDED\> | Coin3D binding to Qt | Dependencies pre-bundled with FreeCAD source code |
| GNU Debugger |  |  |  |  |  |  | Debugging Build Dependencies |
| F2C |  |  |  |  |  | Fortran to C Converter | Unknown Dependencies (I saw in lists) |
| DOS2UNIX |  |  |  |  |  | DOS to UNIX text file converter; Also listed in Fedora and OBS FreeCAD.spec | Unknown Dependencies (I saw in lists) |
| HDF5 OpenMPI 4 - Development files |  |  |  |  |  |  | Unknown Dependencies (I saw in lists) |
| OpenCV - Development Files |  |  |  |  |  |  | Unknown Dependencies (I saw in lists) |
| FreeGLUT - Development Files |  |  |  |  |  |  | Unknown Dependencies (I saw in lists) |
| X Input Libraries |  |  |  |  |  |  | Unknown Dependencies (I saw in lists) |
| Netgen - Development files |  |  |  |  |  |  | Unknown Dependencies (I saw in lists) |
| Matplotlib Qt5 Python 3 Module |  |  |  |  |  |  | Listed in OBS for openSUSE |
| GitPython Python 3 Module |  |  |  |  |  |  | Listed in OBS for openSUSE |
| FreeType2 - Development Files |  |  |  |  |  |  | From FreeCAD Wiki |
| GNU Triangulated Surface Library |  |  |  |  |  |  | From FreeCAD Wiki |
| KDTree++ |  |  |  |  |  | For Sorting; on Debian and Fedora FreeCAD.spec; Looks like is included in FreeCAD | From FreeCAD Wiki |


