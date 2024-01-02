[[Field Programmable Gate Arrays]] (FPGA) are processing units whose function can be modified by the programmer.

An FPGA consists of programmable logic blocks (PLB) such as LUTs, MUX, DSP and RAM and programmable interconnect points (PIP). These components can be thought of as lego blocks with which the functionality of the FPGA can be changed.

Simple FPGAs may only contain LUTs and FFs.

Larger FPGA based SoCs can have other macro blocks, e.g. Ethernet, PCIe, etc. or even larger blocks like video codecs for easy onboarding.
## FPGA Fabric
This refers to the plain hardware of the FPGA, composed of PLBs and PIPs.
The PLBs and other hardwired circuits are known as primitives, and they are the IP of the manufacturer.
FPGA IP Cores may or may not make use of them.
## FPGA Core
This can mean either:
- FPGA RTL code designed for a purpose. e.g. HDMI FPGA Core, LED Blinking FPGA Core
- Or in case of FPGA based SoCs, it can refer to the part of the SoC that includes the FPGA die, alongside other CPU cores etc. e.g. Xilinx Zynq MPSoCs, Intel Altera SoCs

> [!NOTE] Additional FPGA blocks commonly in use
> - I/O Pins
> - Block RAM
> - Clock Generators
> - High Speed Serial Transceivers (Multi Gigabit Transceivers)
> - DSP/Math Block (for speed)
> - Hard-wired CPUs