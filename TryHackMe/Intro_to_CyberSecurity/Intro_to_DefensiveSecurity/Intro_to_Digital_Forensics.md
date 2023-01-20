# Task 1: Introduction to Digital Forensics
* Forensics is the application of science to investigate crimnes and establish facts. Since the rise of the smartphone and laptops, a new branch of forensics was born to investigate related cromes
* **Computer Forensics ==> Digital Forensics**
* With all these new digital media, many questions arise to how law enforcement should collect and protect the integrity of this evidence
  * _How should the police collect digital evidence?_
  * _What are the procedures to follow if the computer or/and smartphone are running?_
  * _How to transfer the digital evidence?_
  * _Are there certain best practices to follow when moving computers?_
  * _How to analyze the collected digital evidence?_
 
**Consider the desk in the photo above, in addition to the smrtphone, camera, and SD cards, what would be interesting for digital forensics?**
```
laptop
```

# Task 2: Digital Forensics Process
* As a digital forensics investigator, you arrive at a scene similar to the one shown in the image above. What should you do as a digital forensics investigator? After getting the proper legal authorization, the basic plan goes as follows:
  
  1. Acquire the evidence: Collect the digital devices such as laptops, storage devices, and digital cameras. (Note that laptops and computers require special handling if they are turned on; however, this is outside the scope of this room.)
  2. Establish a chain of custody: Fill out the related form appropriately (Sample form). The purpose is to ensure that only the authorized investigators had access to the evidence and no one could have tampered with it.
  3. Place the evidence in a secure container: You want to ensure that the evidence does not get damaged. In the case of smartphones, you want to ensure that they cannot access the network, so they don’t get wiped remotely.
  4. Transport the evidence to your digital forensics lab.

* At the lab, the process goes as follows:

  1. Retrieve the digital evidence from the secure container.
  2. Create a forensic copy of the evidence: The forensic copy requires advanced software to avoid modifying the original data.
  3. Return the digital evidence to the secure container: You will be working on the copy. If you damage the copy, you can always create a new one.
  4. Start processing the copy on your forensics workstation.

* The above steps have been adapted from Guide to Computer Forensics and Investigations, 6th Edition.

* A more general outline according to the former director of the Denfense Computer Forensics Laboratory, **_Ken Zatyko_**:

  * Proper search authority: Investigators cannot commence without the proper legal authority.
  * Chain of custody: This is necessary to keep track of who was holding the evidence at any time.
  * Validation with mathematics: Using a special kind of mathematical function, called a hash function, we can confirm that a file has not been modified.
  * Use of validated tools: The tools used in digital forensics should be validated to ensure that they work correctly. For example, if you are creating an image of a disk, you want to ensure that the forensic image is identical to the data on the disk.
  * Repeatability: The findings of digital forensics can be reproduced as long as the proper skills and tools are available.
  * Reporting: The digital forensics investigation is concluded with a report that shows the evidence related to the case that was discovered.

**It is essential to jeep track of who is handling it at any point in time to ensure that evidence is admissible in the court of law. What is the name of the documentation that would hepl establosh that?
```
Chain of Custody
```

# Task 3: Practical Example of Digital Forensics

### Document Metadata

* when you create a text file, ```TXT```, some metadata gets saved by the OS, such as file creation date and last modification date.
* even more metadata is saved when you use a more advanced editor, such as MS Word
* example of using ```pdfinfo``` tool on a .pdf file:
```bash
root@ip-10-10-251-116:~# pdfinfo ransom-letter.pdf 
Title:          Pay NOW
Subject:        We Have Gato
Author:         Ann Gree Shepherd
Creator:        Microsoft® Word 2016
Producer:       Microsoft® Word 2016
CreationDate:   Wed Feb 23 09:10:36 2022 GMT
ModDate:        Wed Feb 23 09:10:36 2022 GMT
Tagged:         yes
UserProperties: no
Suspects:       no
Form:           none
JavaScript:     no
Pages:          1
Encrypted:      no
Page size:      595.44 x 842.04 pts (A4)
Page rot:       0
File size:      71371 bytes
Optimized:      no
PDF version:    1.7

root@ip-10-10-251-116:~# pdfinfo ransom-letter.pdf | grep Author
Author:         Ann Gree Shepherd
```
**Using ```pdfinfo```, find out the author of the attached PDF file.**
```
Ann Gree Shephers
```

### Photo EXIF Data
* **_EXIF_** stands for **Exchangeable Image File Format** which is a standard for saving metadata to image files
* whenever you take a photo with your smartphone or with a digital camera, plenty of information gets embedded in the image such as:
  * camera model/ smartphone model
  * date and time of image capture
  * photo settings such as focal length, aperture, shutter speed, and ISO settings

* Because smartphones are equipped with a GPS sensor, finding GPS coordinates embedded in the image is highly probable. The GPS coordinates, i.e., latitude and longitude, would generally show the place where the photo was taken.
 * **_exiftool_** is a command line tool that all you to read and write metadate on various file types, ie JPEG.
```bash
root@ip-10-10-251-116:~# exiftool letter-image.jpg | grep GPS
GPS Latitude Ref                : North
GPS Longitude Ref               : West
GPS Time Stamp                  : 13:37:33
GPS Latitude                    : 51 deg 30' 51.90" N
GPS Longitude                   : 0 deg 5' 38.73" W
GPS Position                    : 51 deg 30' 51.90" N, 0 deg 5' 38.73" W
```
**Using ```exiftool``` try to find where the kidnappers took the image they attached to their document. What is the name of the street?**
```
Milk Street
```bash
**What is the model name of the camera used to take this photo?**
```
root@ip-10-10-251-116:~/Rooms/introdigitalforensics# exiftool letter-image.jpg | grep Model
Camera Model Name               : Canon EOS R6
Lens Model                      : EF50mm f/1.8 STM
Device Model                    : 
Device Model Desc               : sRGB
```
```
Cannon EOS R6
```

