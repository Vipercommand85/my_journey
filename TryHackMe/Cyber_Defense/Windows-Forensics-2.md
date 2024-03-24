# Task 2
## The FAT File System
### File Allocation Table (FAT):
* default file system for Microsoft OS since the late 1970s & still in use (no longer default)
* creates a table that indexes the location of bits that are allocated to different files

#### Data Structures of the FAT File System
* **Clusters**: a basic storage unit of the FAT file system
	* each file store can be considered a group of clusters containing bits of information

* **Directory**: contains information about file identification, like file name, starting cluster, & filename length
* **File Allocation Table**: a linked list of all clusters, containing the status of the cluster & the pointer to the next cluster in the chain

#### FAT12, FAT16, FAT32
* FAT file format divides the available disk space into clusters for more straightfoward addressing
* the number of these clusters depends on the number of bits used to address the cluster
* original developed with 8-bit cluster addressing (FAT Structure)

| Attribute	| FAT12	| FAT16	| FAT32	|
| Addressable Bits	| 12	| 16	| 28	|
| Max Number of Clusters	| 4,096	| 65,536	| 268,435,456	|
| Supported Size of Clusters	| 512B-8KB	| 2KB-32KB	| 4KB-32KB	|
| Max Volume Size	| 32MB	| 2GB	| 2TB	|

* even though the max volume size for FAT32 is 2TB, Windows limits formatting to only 32GB
* max volume & file size for both FAT16 & FAT32 is **4GB**
* max volume & file size for both FAT16 & FAT32 is **4GB**
* max volume & file size for both FAT16 & FAT32 is **4GB**
* max volume & file size for both FAT16 & FAT32 is **4GB**
* max volume & file size for both FAT16 & FAT32 is **4GB**
* max volume & file size for both FAT16 & FAT32 is **4GB**
* max volume & file size for both FAT16 & FAT32 is **4GB**
* max volume & file size for both FAT16 & FAT32 is **4GB**

## exFAT File System
* as file sizes have grown the max file size limit of FAT32 became a substantial limiting factor for camera manufactures
* although Microsoft had moved onto the **NTFS** file system, it was not suitable for digital media devices as they did not need th security features & overhead that came with it
* this is how the **exFAT** Fiel System was created
* now the default for SD cards larger than 32GB
* supports a cluster size of 4KB to 32MB
* max volume size of 128PB

### Questions
1) How many addressable bit are there in the FAT32 file system?
```bash
28 bits
```

2) What is the maximum file size supported by FAT32 file system?
```bash
4GB
```

3) Which file system is used by digital cameras & SD cards?
```bash
exFAT
```



## The NTFS File System
* this file system added security, reliability, recovery capabilities, and broadened the file size limitations

### Journaling
* NTFS keeps a log of changes made to the metadata in the volume
* this helps the system to recover from a crash or data movement due to defragmenation
* stored in the $LOGFILE in the volumes's root directory

### Access Controls


