Work:
- About trust

TIL:
- Poetry manages Python dependencies with pyprojects.toml
- Github Action scripts are reusable scripts
- netlify.yaml environment variables can be used by build scripts
- Similarly, Github Actions environment variables can also be used by build scripts
- Github Actions is split into workflows and jobs. Jobs are seperate virtual machines that run parallely, and runs actions.
- Netlify can build private repos.
- Github Actions have limits on private repos and domain names.
- Github Actions have unlimited build minutes in public repos.
- Enable actions/checkout@v3 before accessing the repository in a job.
- Actions can be run on push event trigger.
---

- PROJ: Git Hello Worlds
- Thought Pruner
- Sky
- POST: Spacetime
- IDEA: Certified Sand Castle, Kite and Bridge Construction expert | The reason we can't scale up sand castles or aircrafts are because the fundamental forces are in inverse square ratio, but scaling is linear; Also that the interconnected forces increase with more particles
- IDEA: Adjusting pricing based on supply transport charges
- WRITING-PROMPT: The smaller you zoom a Mandelbort set, the chances of getting lost in open space is high. Imagine if you were like AntMan, but you have to touch a particle to come back to being a human.
- How to public domain license - Dheeraj
- FOSS Bookmark Management: Floccus, xBrowserSync, Briefkasten, Linkwarden
- FOSS Writing: StylusLabs Write, Xournal++, Scrivano
- Static Site Generators: Sphinx, Hugo, Jekyll, ObsidianHtml, Wiki Engines, docfx, Docusaurus, Gitbook
- FACT: Markdown was developed by John Gruber and **Aaron Swartz**. Gruber wrote the first implementaion for MD to HTML converter in Perl.

Concepts:
- Learning Linux: NAND2Tetris, LFS, BLFS, Kernel trimming, MinixFS, UnixFS, xv6, DOS, C | Pop / Gentoo
- Package Managers: Homebrew, Store; Source, DMG | Chocolatey, WinGet, Ninite, PortableApps, 0install, Store; Source, EXE, MSI, MSIX, APPX | APT, Aptitude, Synaptic, Zypper, YaST, DNF, YUM, pacman, pamac, aurman, Portage, Nix, eopkg, xbps-install, Snap, Flatpak; Source, DEB, RPM, AppImage | NPM, pip, NuGet, yarn, RubyGems, Composer
- Linux Archiving Formats: TAR, gzip, .tgz, ZIP

- Linux DAWs: Ardour, MusE, ZRythm, LMMS, QTractor
- CAD/CAM/CAE Software: Code_Aster (FEA), SALOME (Geometry and Meshing; Includes SHAPER CAD, PARAVIS, etc.), OpenFOAM, BARAM, CalculiX, FreeCAD, Elmer-FEM, MOOSE | Simscale uses Code_Aster and CalculiX for FEM and OpenFOAM for CFD | ANSYS/SimScale for ease of use | SALOME-Meca (Salome+Code_Aster), Salome CFD, Salome Hydro, TRUST
- Mathematics Software: FORTRAN / Octave / MATLAB Symbolic Math Toolbox / SciLab / Maple / Mathcad / Mathematica / Anaconda; SageMath; Lean

- Intel: Atom, Celeron (Blank, N, J, G), Pentium (Blank,Pro,D,M,Silver, Gold), Core (2,i3,i5,i7,i9), Xeon (Blank,LV,MV,MP,ULV,L,X,D,E,W,E3,E5,E7,Bronze,Silver,Gold,Platinum) | AMD: AMD, A-Series (Blank, PRO A-Series), E-Series, FX-Series, Athlon (Blank, Gold, Gold PRO), Ryzen ((3,5,7,9)(Blank, PRO)), Embedded, Threadripper (Blank, PRO), EPYC
- Embedded: Intel, Qualcomm, Broadcom, NXP iMXP
- From 2023, Intel Core, Celeron and Pentium will be replaced with Intel Processor lineup. Pentium and Celeron are brands, but Core is a trademark. The upcoming Processor will also be a trademark. Also i3 N-Series, Processor N-Series and U-Series are being introduced, which do not contain the generation number.
- Virtualization, Paravirtualization, Passthrough (GPU/PCIe/VFIO), SR-IOV - https://news.ycombinator.com/item?id=23568006

- Aerospace Concepts: Satellite Bus | Geosynchronous Orbits | Hyperloop | Launch Vehicle | Rocket Engine | Space Elevator (Kevlar string can work in Moon)
- Aircrafts
	- Aerostats (lighter than air) - Balloons (Unpowered), Airships (Powered) | Aerodynes (Heavier than air) - Aerodynamic lift, Powered lift (VTOL)
	- Rockets don't depend on aerodynamic lift, and can do spaceflight

- $\rho_0=\rho_t(1+\alpha(T-T_0))$  - For conductors (not semiconductors, which have exponential)

- Blender Backup Addon: https://blender.stackexchange.com/questions/6940/config-blender-to-save-backup-files-in-subfolder
- Blender Git (easy diffs): https://devtalk.blender.org/t/blendit-blender-git-version-control-for-blender/25992

- G-Codes: https://gcodetutor.com/cnc-machine-training/cnc-g-codes.html

- Aluminium Alloy Reference: https://www.rcuniverse.com/forum/rc-1-8th-scale-buggies-244/2692445-difference-between-7075-6061t6-aluminum.html
- Idea for Fiberglass wrap: https://drones.stackexchange.com/questions/877/what-is-a-good-alternative-to-carbon-fibre-for-a-quadcopter-frame

| Quantity                  | Measures          | Meaning                                   | Units        |
| ------------------------- | ----------------- | ----------------------------------------- | ------------ |
| Modulus of Elasticity     | Stiffness         | Ratio of Stress to Strain                 | GPa          |
| Ultimate Tensile Strength | Tensile Strength  | Maximum Stress before breaking            | MPa          |
| Yeild Tensile Strength    | Tensile Strength  | Maximum Stress before plastic deformation | MPa          |
| Density                   | Density           |                                           | g/cm^3       |
| Specific Stiffness        | Stiffness/Density |                                           | GPa/(g/cm^3) |
| Specific Strength         | Strength/Density  |                                           | MPa/(g/cm^3) |

| Material               | x1.MoE / Stiffness | x2.UTS / Strength | x3.Density | y1.Specific Stiffness | y2.Specific Strength |
| ---------------------- | ------------------ | ----------------- | ---------- | --------------------- | -------------------- |
| E-Glass Fiber          | 73                 | 3400              | 2.62       | 28                    | 1297                 |
| Aluminium 7075         | 71.7               | 228               | 2.81       | 26                    | 81                   |
| Aluminium 6061         | 68.9               | 124               | 2.7        | 26                    | 46                   |
| Aluminium 2017A (AU4G) | 72                 | 427               | 2.79       | 26                    | 153                  |
| Balsa Wood             | 3.71               | 73                | 0.16       | 16                    | 456                  |
| CFRC                   | 234                | 4000              | 1.7        | 138                   | 2353                 |
| CFRP Epoxy Resin (30%) | 141                | 2040              | 1.41       | 100                   | 1447                 |
| GFRP                   | 76                 | 8000              | 1.6        | 48                    | 5000                 |
