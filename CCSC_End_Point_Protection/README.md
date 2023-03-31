# THE COMPLETE CYBER SECURITY COURSE: END POINT PROTECTION
## Section 1: Introduction
* [Canary Tokens](https://www.stationx.net/canarytokens/)
* can use these to set traps for potential snooping adversaries

## Section 2: Goals and Learning Objectives- Volume 4
### What is End-Point-Protection and why is is important?
* **End Point** technical term to describe any client that we use to access a resource
* **End Point Protection** are the technologies installed on the end points that attempt to protect them
  - IDS
  - Anti-Virus
  - Signitures
  - Disk Encryption
  - Application White Listing
  - IPS

### Goals and Learning Objectives
#### File and Disk Encryption
* how to select and implement appropriate disk and file encryption technology
* how disk encryption is attacked
* how to mitigate attacks

#### Anti-Virus and EPP
* understand the current anti-virus, anti-malware and EPP software suites
* how they work, how to select the best products and how to implement them successfully

#### Next Generation - Anti-Virus, EPP, EPDR
* the current and future security software suites
* how EPP technologies can work in synergy to provide defense in depth

#### EPP Technology
* technologies offered by end point protection software; both traditional and next generation
* application control, execution, prevention, white listing, security frameworks and how to implement them

#### Threat Detection and Monitoring
* how we can detect and monitor for threats like malware and hackers
* using honeypots, traps. tokens, intrusion detection systems and file integrity monitors

#### Malware and Hacker Hunting on the End-Point
* how to seek and destroy system resident malware and hackers
* effective methods to find suspicious processes and remove methods of persistance

#### Operating System and Application Hardening
* how to perform operating system and application hardening
* covering manual and automated hardening, hardening standars and auditing

#### Secure Deleteing/Evidence Elimination/Anti-Forensics
* how to securely delete data and meta-data
* anti-forensic techniques
* difference between mechanical and solid state drives for secure data deletion

#### Email Security, Privacy and Anonymity
* email clients, protocolsm authentication methods and email weaknesses
* how to mitigate weaknesses
* PGP ecryption, remailers, how to choose a secure email provider and secure email alternatives

#### Messengers-Security, Privacy and Anonymity
* how to choose and evaluate the best mobile and desktop messengers
* instant messengers, video and voice messengers on mobile and desktop operating ssytems
* iOS and Andriod

## Section 3: File and Disk Encryption
### Disk Encryption
* **Disk Encryption** is a process in which data is converted from a readable formato to an unreadable format that can only be decrypted with the correct key
  * a folder, partition, or entire disk can be encrypted
  * can be softwared or hardware based
  * many SSDs have SED (self encryting drives)
  * some whole/full disk encryption methods **do not** encrypt the boot partition or/and MBR
* **Cold Boot Attack** it is possible to recover the key from memory shortly after the device has been switched off

### Whole Disk Encryption Attacks
#### Breaking Cryptoalgorithms and Brute Force Attacks
* **Symmetric Algorithms**
  * 128-bit keys can be broken on a quantum computer
  * 256-bit keys provide future proof from quatum computers
* **Asymmetric Algorithms**
  * will need to be replaced (not used in disk encryption)

#### Areas to be Conscience of with Cryptography
* Implentation Vulnerabilities
* Configuration Issues
* Backdoors and Implementation Weakening

### Physical Attacks to Disk Encryption
* installing a hidden camera to be able to view a user entering a password for decryption
* utilization of USB keys that will create a bridge between air gapped resources i.e. **CM-1** from **NSA**
* should plenty of physical controls to prevent unauthorized access to resources
* **Direct Memory Access (DMA) attacks** ports such as PCI, PCI Express, FireWire, Thunderbolt, etc can be used with different tools to access memory to retrieve you decryption password/phrase/code
  - [Inception](https://github.com/carmaa/inception)
  - [LostPassword](https://www.lostpassword.com/hdd-decryption.htm)
* **BootKey Problem** the blocks where the operating system are stored must be decrypted before the OS can boot, meaning the key must be available before the UI for entering the password is presented
  - this provides an attack vector where the key can be found in memory
  - most disk encryption solutions provide a preboot authentication by loading a small highly secure OS that is strictly locked down

### Attacks on Ecrypted Containers, Vloumes, & Partitions

































