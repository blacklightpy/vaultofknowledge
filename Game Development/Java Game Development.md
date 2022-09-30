# Platform
- Java ME (Java Platform, Micro Edition)
	- formerly J2ME (Java 2 Platform, Micro Edition)
	- Consists of configuration layer and profile layer
	- ## Configuration Part
		- Connected Limited Device Configuration (CLDC)
			- Is a subset of CDC, intended for lower end devices
			- Most classes are derived from J2SE and use J2SE names, and CLDC-specific classes use javax.microedition prefix
		- Common Device Configuration (CDC)
	- ## Profile Part
		- ### CLDC Based
			- Mobile Information Device Profile (MIDP) 2.0
			- Personal Digital Assistant Profile (PDAP; extends MIDP)
		- ### CDC Based
			- Foundational Profile (FP)
			- Personal Basis Profile (PBP; extends FP)
			- Personal Profile (extends PBP)

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