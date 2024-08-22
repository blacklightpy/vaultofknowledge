# Plan of Study
- Devices
	- HDD Anatomy
- Physical Storage Areas
	- HDD Storage Areas
	- SSD Storage Areas
- Abstract Concepts
# Devices
## HDD Anatomy
- Spindle Motor (The motor that spins the spindle)
- Spindle (The shaft that spins the platters)
- Platters (Double sided magnetic disk that store data)
- Surface (One side of a platter)
- Actuator Arm / Access Arm / Arm (Used to position the Heads at the right track)
- Head (The ends of the Arm that Reads and Writes to each surface)
# Storage Areas
## HDD Physical Storage Areas
- Platter (Each platter has two surfaces which store multiple physical units of data)
- Tracks (Each disk has many tracks that store multiple physical units of data)
- Sectors (Each track has many sectors that each hold a single physical unit of data)
	- Sectors used to be 512B, but all modern disks use 4KB sectors due to aerial density issues
## Logical Storage Areas
- Allocation Unit (Combinations of sectors that hold a single logical unit of data as understood by the File System)
	- Known as Clusters in MS-DOS FAT and NTFS
	- Known as Blocks in Linux File Systems
# Storage Mechanism
## HDD Magnetic Storage
## SSD Flash Storage

# Addressing Schemes
## Cylinder-Head-Sector (CHS) Addressing
- Cluster (Windows) / Block (Linux) / Allocation Unit (Neutral)
- Track (Radial Divisions) (Also called a segment, but bad terminology)
- Sector (Circumferential Divisions)
	- Disc Sector (The whole sector)
	- Track Sector (The sector of a track) (Allocation Units / Blocks / Clusters)
- Sectors per Track (differs per track, the middle tracks have fewer sectors to store the same data)
- Cylinder (Same track in all platters)
## Logical Block Addressing (LBA)
- Logical Block Address (LBA)
	- LBA = (Cylinder × Max. Heads per Cylinder + Head) × Max. Sectors per Track + (Sector − 1)
- Logical Sector sizes can vary due to skew/interleave
- Logical Sectors can be smaller than Physical Sectors
	- This is often done to support software than assumes old 512B sectors on modern 4K sector discs
	- But it causes problems, because to write a 512B sector, it reads 4KB, modifies the relevant part and writes it
	- Modern caching techniques may solve this problem