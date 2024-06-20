**TODO:** Copy Notes from my notepad and Budgie Backup from Early 2022

Some of the GUI frameworks are referred to as RAD frameworks.

- Hardware Abstraction API: OpenGL, Vulkan, DirectX
- Graphics API implementations: 2D: DRM, GDI, Graphics Card Drivers (DirectX/OpenGL/Vulkan), | 3D: Graphics Card Drivers (DirectX/OpenGL/Vulkan), Mesa3D
	- Wayland and Direct2D don't directly access 2D drivers.
- 3D GUI Libraries:
	- ImGui (3D Apps)
	- OGRE
	- VTK
- Low Level GUI Libraries
	- SFML (Multimedia Library; Low userbase; uses modern C++ and OOP)
	- SDL (Low Level / Pixel manipulation)
		- If using a graphics API (OpenGL/Vulkan), it works better with OpenGL
		- No networking built-in; can use 3rd party libraries for video games
	- GLFW (Only window and input handling)
	- GLUT (Old and buggy; There is FreeGLUT, still, use SFML/SDL/GLFW instead)

> [! NOTE]
> Probaly should organize widget frameworks as cross-platform>language and platform specific>platform>language
 
 > [! NOTE]
 > Framework and Toolkit are loosely defined words. I guess framework means something larger than a toolkit.
- Widget Frameworks:
	- C++: Qt
	- Python: PyQt5, wxWidgets, Tkinter, wxPython, Pyforms, Kivy
	- Other: GTK4
- Widget Toolkits:
	- Cross Platform: GTK, Qt, Tcl/Tk, ImGui, FLTK, GNUSTEP, XUL, IUP, Nuklear, Xamarin.Forms
	- Windows only:
		- Common Language Infrastructure (CLI; .NET): WinForms, XAML (WPF, WinUI, Silverlight), XNA
		- C++: MFC, Active Template Library, Windows Template Library, Object Windows Library
		- Pascal: Visual Component Library
		- Low Level: Win32, UWP
	- Linux/X11(/Wayland) only:
		- XForms, Motif, EFL
		- Low Level: Xlib, XCB (modern alternative to Xlib), GDK (GTK backend)
	- Apple only: Cocoa, Cocoa Touch, Xamarin.Mac, Xamarin.iOS
	- Android: Xamarin.Android, Qt for Android
	- Java: AWT, Swing, JavaFX

- Windows
	- GDI (Original graphics interface; closely tied to Win32)
	- GDI+ (Introduced as a successor to GDI in XP)
	- Direct2D (Modern replacement for GDI based on Direct3D introduced in Windows 7)
		- Supports fully hardware-accelerated alpha-blending, hence anti-aliasing, and also vector graphics
	- Direct3D (3D API)
	- DirectWrite (Text layout and rasterization engine; Rasterized text can be displayed with GDI/Direct2D)
	- DXGI (Low level infrastructure for Direct3D)
	- Window Compositing: Desktop Window Manager (DWM) was introduced in Vista. Before that, apps could draw directly to screen, causing trails when unresponsive.

- Linux
	- Uses X11 or Wayland
	- Kernel Driver (DRI / Vendor) + Userspace Library (Mesa 3D / Vendor)
	- DirectX Implementations: Gallium Nine, DXVK, VKD3D

- Apple
	- Graphics API: Mantle
	- Graphics Library: Carbon
	- Graphics Framework: Cocoa