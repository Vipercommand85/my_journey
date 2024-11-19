# Microsoft Windows Hardening
## Task 1: Introduction
* Username: ```Harden```
* Password: ```harden```
* Machine IP:

## Task 2: Understanding General Concepts
### Services
* create and manage critical functions such as network connectivity, storage, memory, sound, user credentials, & data backups
* these automatically run in the background
* managed by the **_Service Control Manager_** panel and divided into 3 catagories:
  * Local
  * Network
  * System
* type ```services.msc``` in the _run_ application to access the Windows services
![image](https://github.com/user-attachments/assets/7202a568-bba6-4275-81ec-3f3ea77bd02d)

### Windows Registry
* is a unified container database that stores configurational settings, essential keys, & shared preferences for Windows & third-party applications
* malicious programs will make undesired changes in the registry editor to try to masks it's activity as normal system operation
* type ```regedit`` in the _run_ application to view registry

### Event Viewer
* application that shows log details about all events occurring on the system
* will include information about driver updates, hardware failures, changes in the operating system, invalid authentication attempts & application crash logs
* events are catagorized as follows:
  * **Application**: records events of already installed programs
  * **System**: records events of system components
  * **Security**: logs events related to security & authentication
* run ```eventvwr``` in the _run_ application to view records

### Telemetry
* is a data collection system used by **Micorsoft** to enhance the user experience by preemptively identifying security & functional issues in software
* applications seamsly share data with **Microsft**
* is achieved by **_Universal Telemetry Client (UTC)_** services available in Windows
* runs through ```diagtrack.dll```
* contents that are collected are stored encrypted in a local folder, ```%ProgramData%\Microsoft\Diagnosis```
* this files contents are sent to **Microsoft** every 15 minutes or so

#### What is the startup type of App Readiness serves in the services panel?
```
Maunual
```
#### What is the default value of the key for "tryhackme"?
```
{THM_REG_FLAG}
```
#### Can you find the flag in the Diagnosis folder?
```
{THM_1000710}
```





























