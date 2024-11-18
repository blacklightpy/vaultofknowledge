# Organizations
- Free Software Foundation Europe (FSFE)
- Open Source Society University (OSSU)
# Production Computers

## Laptops
- Novena Laptop
- MNT Reform
- GNU/Linux PowerPC Notebook
- T-Head ROMA Laptop
## Motherboards
- Milk-V Pioneer (SG2042)
## Single Board Computers
- StarFive VisionFive 2 (has a GPU; Compares to RPi 4, but with a GPU; JH7110 SoC = 4x FU740 + IT GPU)
- Pine64 Star64 (JH7110 + WiFi)
- Milk-V Mars (JH7110)
- BananaPi JH7110 based
- Milk-V Meles (TH1520)
- BeagleBoard Beagle-V Ahead (TH1520)
- Sipeed LicheePi 4A (TH1520; Also has tablet, workstation array and console form factors for the LM4A board)
- Planned Sipeed SBC based on C908 with RVV Extensions v1.0 (https://twitter.com/SipeedIO/status/1654055669774036993/photo/1)
- Milk-V Jupiter (SpacemiT-K1)
# Processors
## SoC
- AMIGA Chipset SoC
- LibreSoC
- Rocket Chip SoC Generator (Has Rocket Core and other CPUs, can also add custom cores)
- StarFive JH7110 (4x SiFive FU740 + Imagination Tech GPU)
- Alibaba T-Head TH1520 (4x XuanTie C910 + Imagination Tech BXM-4-64 GPU + 4 TOPS NPU)
- StarFive JH8100 (upcoming, 12nm)
- SOPHON SG2042 (64 x C920; RV V Extension 0.7.1)
- SpacemiT (RVV Extensions 1.0.0)
- XiangShan V3
- VRoom! (may not release)
- SonicBOOM 

Verilog Simulations: See Readme here: https://github.com/openhwgroup/cva6 (can execute helloworld.c in Simulator)
## CPU
- Shakti Open Core
- XuanTie by T-Head
- SiFive (U74 is in SiFive Essential 7 Series; can run Linux)
- Rocket Core (By SiFive, UCB and CHIPS Alliance; included with Rocket Chip Generator)
- BOOM (Berkeley Out of Order Machines; By UCB)
- asics.ws Cores
- Pile of Cores (PoC; VLSI-EDA/PoC on GitHub)
- [[FOSS CPU Cores]]

**Some RISC-V Comparison Overview**
	![[RISC V Core Comparison.avif]]
## GPU
- MIAOW GPGPU Core
- asicguy/gplgpu on GitHub
## FPGA

> [!NOTE]
> - FPGA Cores can be implemented on FPGA development boards. Also, a compiled FPGA project is only supported on that toolchain, and if it is not open-source, the only way others can use it is by reverse engineering.
> - FPGA Development boards are based on FPGA Fabrics. The bitstreams associated with the FPGA Fabrics are usually proprietary and compiled using vendor software, but reverse engineering projects have led to the availability of open source development boards.
### FPGA Design Tooling

Steps: Verilog RTL > [Synthesis] > Netlist > [Place and Route] > Config > [Translate] > Bitstream

- OpenFPGA - A complete FPGA development framework
- F4PGA by CHIPS Alliance (formerly SymbiFlow)
	- Synthesis Tool: Yosys Open SYnthesis Suite
	- Place and Route Tool: Yosys nextpnr
- Enjoy-Digital LiteX (See FOSDEM 2023: https://archive.fosdem.org/2023/schedule/event/fpga_bitstreams/)

> [!NOTE]
> OSHW Guidelines: https://www.oshwa.org/best-practices-for-sharing-fpga-designs-2/

> [!NOTE]
> ASIC and FPGA EDA Tooling has three components: Hardware Description, Backend and Frontend
> 
> Hardware Description: Verilog, VHDL, Chisel, etc.
> Backend: ASIC/FPGA Tooling, Verification, Testing and Simulation
> Frontend: Synthesis Tools
### FPGA Development Boards
The FPGA bitstreams are vendor secrets, and open source development boards are made by reverse engineering various core bitstreams.

- Radiona ULX3S (Lattice ECP5 based; 4 variants - ECP5 12k-84k LUTs)
- OrangeCrab FPGA
- iCEBreaker FPGA (Lattice iCE40 based)
- Embedded Micro Mojo V3 FPGA
### FPGA Fabrics
- Companies: Lattice Semiconductor, Microchip, Xilinx, Intel, Analog Devices, QuickLogic
# Designs
## Organizations
- OpenCores.org
- CHIPS Alliance
- LibreSilicon
## Sub-organizations
- Digilent Vivado IPs (e.g. Pmod BLE)
- Redwood EDA TL-Verilog
- Redwood EDA Makerchip
## Designs
- WISHBONE Bus
- lowRISC
- PowerPC
- NVIDIA NVDLA
- RISC-V
- OpenRISC
## Manufacturing
- Skywater PDK
## Educational
- Ben Eater's 8-bit Computer
- DERULF's 8-bit Computer (based on Ben Eater's)
# Peripherals
## Radio
- openwifi SDR (based on Vivado)
- MyriadRF SDR
- Xilinx Zynq based SDRs (Xilinx is not open hardware)
# Software
- NVIDIA PhysX

Software:

| Open Algorithm | Open Core | Open Source | Open License |
| -------------- | --------- | ----------- | ------------ |
|                |           |             |              |

Hardware:

| Open Firmware | Open Circuit Board | Open Hardware | Open Case Design | Open License |
| ------------- | ------------------ | ------------- | ---------------- | ------------ |
|               |                    |               |                  |              |