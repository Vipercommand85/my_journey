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
* define the owner of a file/directory & permissions for each user

### Volume Shadow Copy
* NTFS keep track of changes made to a file using a feature called **Volume Shadow Copy**
* using this feature a user can restore previos file version for recovery or system restore

### Alternate Data Streams
* a file is a stream of data organized in a file system
* **ADS** is a feature that allows files to have multiple streams of data stored in a  single file
* IE & other web browsers use ADS to identify files downloaded from the internet

## Master File Table
* is a structure database that tracks the objects stored in a volume

### $MFT
* first record in the volume
* **Volume Boot Record (VBR)** pints to the cluster where it is located
* $MFT stores information about the clusters where all other objects present on the volume are located
* this file contains a directory of all the files present on the volume

### $LOGFILE
* stores the transactional logging of the filesystem which helps to maintain the integrity of the file system in the event of a crash

### #UsnJrl
* stands for **Update Sequence Number (USN) Journal**
* is present in the **$Extend** record
* contains information about all the files that were changed in the file system & the reason for the change
* also called the change journal

### MFT Explorer
* tool used to explore MFT files
* available as a CLI or GUI tool


## Questions
### Parse the $MFT file placed in C:\users\THM-4n6\Desktop\triage\C\ and analyze it. What is the Size of the file located at .\Windows\Security\logs\SceSetupLog.etl?
```bash
49,152
```

### What is the size of the cluster for the volume from whihc this triage was taken?
**HINT** Parse the **$BOOT** file with MFTECmd.exe
```bash
4,096
```


## Task4: Recovering Deleted Files
### Deleted Files & Data Recovery
* when a file is deleted from the file system, the file system deletes the entries that store the file's location on disk
* as long as the location the file was in is not overwritten with new data, it is possible to recover the date that is stil there

#### Disk Image
* is a file that contains a bit-by-bit copy of a disk drive
* this bit-by-bit copy retains all the file metadata
* this is helpful in 2 ways:
    * first, the original evidence is not contaminated while performing forensiics
    * second, the disk image file can be copied to another disk & analyzed without using specialized hardware

#### Recovering Files using Autopsy
* create a new case and supply a base directory and user type (Single or Multi-User)
* enter information for the case file (optional but allows for organiztion)
* follow steps presented as needed
* notice files marked with a red X, this indicates a deleted file
* you can right click on the file and extract the contents to the file tree in the left pane


### Questions
#### There is another xlsx file that was deleted, what is the fill name of that file?
```bash
Tryhackme.xlsx
```

#### What is the name of the TXT file that was deleted from the disk?
```bash
TryHackMe2.txt
```



## Task 5: Evidence of Execution
### Windows Prefetch Files
* when a program is run in Windows, it stores its information for future use in the **C:\Windows\Prefetch\**
* files have an **.pdf** extension
* file contains the last run times of the application, number of times the application was run, & any files & device handles used by the file
* can use **Prefetch Parser (PECmd.exe)**

### Windows 10 Timeline
* Windows 10 stires recently used applications & files in an SQLite database called the **Windows 10 Timeline**
* contains the last executed programs and the focus time of the application
* store in the following directory:
```bash
C:\Users|<username>\AppData\Local\ConnectedDevicesPlatform\{randomfolder}\ActivitiesCache.db
```
* can use **WxTCmd.exe** for parsing the data in this database file

### Windows Jump Lists
* introduced to help users go directly to their recently used files from the taskbar
* this list can be viewed by right-clicking an application's icon in the taskbar
* this data is stored at the following directory:
```bash
C:\Users\<username>\AppData\Roaming\Microsoft\Windows\Recent\AutomaticDestinations
```
* **JLECmd.exe** can be used to parse this file


## Questions
### How many time was GKAPE.EXE execute?
```bash
2
```

### What is the last execution time of GKAPE.EXE?
```bash
12/01/2021 13:04
```

### When Notepad.exe was opened on 11/30/2021 at 10:56, how long did it remain in focus?
```bash

```

### What program was used to open C:\Users\THM-4n6\Desktop\KAPE\KAPE\Changelog.txt?
```bash

```


## Task 6: File/Folder Knowledge


## Task 7: External Devices/USB Device Forensics
### Setupapi dev log for USB Devices
* when any new device is connected to a system, information related to the setup of that device is stored in the follwing log:
```bash
C:\Windows\inf\setupapi.dev.log
```
* this log contains the device serial number & the first/last times the device was connected

