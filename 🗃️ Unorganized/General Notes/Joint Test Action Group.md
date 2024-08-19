Joint Test Action Group (JTAG) implements industry standards for on-chip instrumentation in [[Electronic Design Automation]] as an alternative method for verification to digital logic simulation.

It specifies the use of a dedicated debug port implementing a serial communications interface for low-overhead access without requiring direct external access to the system address and data buses. This is useful for testing the device after manufacture. The serial interface connects to an on-chip Test Access Port (TAP) that provides access to a set of test registers that present chip logic levels and device capabilities of various parts.

Vendors often add their own extensions to the JTAG specification for additional functionality.

JTAG was created in 1985 for verification and testing of electronic devices after manufacture. In 1990, it was accepted as the [[Institute of Electrical and Electronics Engineers|IEEE]] standard IEEE 1149.1-1990 by the name "Standard Test Access Port and Boundary-Scan Architecture".

- [What is JTAG? | XJTAG](https://www.xjtag.com/about-jtag/what-is-jtag/)

- The JTAG TAP is used commonly to program NAND devices in microcontrollers, phones, etc.