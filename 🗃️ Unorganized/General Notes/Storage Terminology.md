
# Terms to define
HDD Anatomy
HDD Storage Areas
SSD Storage Areas
Abstract Concepts

## HDD Anatomy
- Shaft (Middle)
- Platte
- Head (Read/Write Arms)
## HDD Physical Storage Areas
- Platters (Each platter has a disk that stores multiple physical units of data)
- Tracks (Each disk has many tracks that store multiple physical units of data)
- Sectors (Each track has many sectors that each hold a single physical unit of data)
## Logical Storage Areas
- Allocation Unit (Combinations of sectors that hold a single logical unit of data as understood by the File System)
	- Known as Clusters in MS-DOS FAT and NTFS
	- Known as Blocks in Linux File Systems
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