# Platform
- Java ME (Java Platform, Micro Edition)
	- formerly J2ME (Java 2 Platform, Micro Edition)
	- Consists of configuration layer and profile layer
	- ## Configuration Part
		- Connected Limited Device Configuration (CLDC)
			- Is a subset of CDC, intended for lower end devices
			- Most classes are derived from J2SE and use J2SE class and package names, and CLDC-specific packages use javax.microedition prefix
			- Contains subsets of java.lang, java.util, java.io, CLDC-specific classes in javax.microedition.*
		- Common Device Configuration (CDC)
			- Is a superset of CLDC, intended for higher end devices
			- Includes all APIs defined by CLDC including java.* packages and javax.microedition.* packages.
			- Contains subsets of java.io, java.lang, java.net, java.security, java.text, java.util and javax.microedition.io
	- ## Profile Part
		- ### CLDC Based
			- Mobile Information Device Profile (MIDP) 2.0
			- Personal Digital Assistant Profile (PDAP; extends MIDP)
		- ### CDC Based
			- Foundational Profile (FP)
				- Completes J2SE versions of java.lang, java.util, java.net, java.io, java.text, java.security
			- Personal Basis Profile (PBP; extends FP)
				- Basic AWT, RMI, JavaBeans
			- Personal Profile (extends PBP)
				- Full AWT, applets, java.mah

Architecture overview diagram at etutorials.org/shared/images/tutorial_36/01fig02.gif

**APIs**
- JSR 184: Mobile 3D Graphics API for J2METM
- JSR 239: JavaTM Binding for the OpenGL® ES API

**Libraries**
- LWUIT (Lightweight UI Toolkit)
- Swing

**Deployment**
- Java Applets (deprecated)
- JNLP (Java Web Start)
- OpenWebStart

### Reading
- LWUIT: https://blog.jayway.com/2008/05/01/lwuit-an-introduction/