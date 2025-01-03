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

## Task 3: Identity & Access Management
### Standard vs Admin Account
* **IAM** involves employing best practices to ensure that only authenticated & authorised users can access the system
* these are the 2 types of accounts in Windows
* **_Admin_** account should only be used to carry out taks like software installation, accessing the registry editor, etc.
* routine functions should only be allowed by **_standard_** accounts
* default way users authenticate is with a username/password combination
* **_Windows 10_** allows users to authenticate with **Windows Hello** which authenticates on **_"something you have, you know, you are"_**

### User Account Control (UAC)
* is a feature that enforces enhanced access control & ensures that all services & applications execute in non-administrator accounts
* helps to mitigate malware's impact & minimises privilege escalation
* will automatically prompt for admin creds if the logged-in user does not already part of the Admin group/is an Adminstrator
* **_Principle of Least Privilege_** "a subject should be given only those privileges needed for it to complete its task. If a subject does not need an access right, the subject should not have that right."
* notification level should always be **Always Notify**

### Local Policy & Group Policies Editor
* built-in interactive tool by Microsoft that allows you to configure & implement local & group policies
* mainly used for networks but can also be used on a workstation/server to limit the execution of vulnerable extension, set passwords policies, etc.
* not available in **Windows Home**, only in **Pro** and **Enterprise** versions

### Password Policies
* one of the primary purposes for local policy editor

### Setting a Lockout Policy
* we can set a lockout policy after N amount of failed logins for a specific user
* an administrator will need to manual unlock this account


#### Find the name of the Administrator Account of the VM.
```
Harden
```
#### What is the default level of Notification for User Account Control?
```
Always Notify
```
How many standard accounts are created in the VM?
```
0
```

## Task 4: Network Management
### Windows Defender Firewall
* built-in application that protect computers from malicious attacks and unauthorised traffic through inbound & outbound rules/filters
* you can access **_Windows Defender Firewall_** by using the ```WF.msc``` in the ```run``` application

![image](https://github.com/user-attachments/assets/f9c32836-eab0-4bf8-baa4-c5ce38150d8c)


* has three main profiles
  * **Domain**
  * **Public**
  * **Private**
  * the private profile **must** be activated with _"Blocking Incoming Connections"_ while using the computer at home
* when configuring the firewall, always configure a **_default deny_** rule before making an exception rule that allows more specific traffic

### Disable Unused Networking Devices
* recommended to disable or properly configure network devices as a way to minimise the attack surfave offered to threat actors

### Disable SMB Protocol
* known to be exploited and should be disabled if you are not sharing files on a network

### Protecting Local Domain Name System (DNS)
* this application is used to translate **_Fully Qualified Domain Names (FQDN)_** into **_IP Adresses_**
* is susceptible to man-in-the-middle attacks which will allows threat actors to intercept traffic and redirect to a malicious system/site
* you can manually enter IP address and corresponding FQDN in ```C:\Windows\System32\Drivers\etc\hosts``` file

### Mitigating Address Resolution Protocol Attack
* **_ARP_** resolves **_MAC Address_** to **_IP Addresses_** that has been saved in the systems **_ARP Cache_**
* **_ARP_** offers no authentication & accepts responses from any endpoint in the network
* an attacker can flood target systems with crafted **_ARP_** responses, which point to an attacker-controleed machine with the intention to intercept traffic
* ```arp -a``` command allows you to check **_ARP_** entries stored in cache
  * you want to ensure that there is no **_MAC Address_** mapped to 2 different **_IP Addresses_**
  * ```arp -d``` command will clear the **_ARP Cache_**
 
### Preventing Remote Access to Machines
* **_Remote Desktop Protocol_** was developed by Microsoft and has been exploited in the past by threat actors, i.e., [Blue Keep Vulnerability](https://en.wikipedia.org/wiki/BlueKeep)
* this should be disabled and a more secure remote management application be utilized instead.

![image](https://github.com/user-attachments/assets/4fde19d5-4419-4075-ad0d-f162dca1b00c)


#### Open Windows Firewall & click on Monitoring in the left pane - which profile is active?
```
Private
```
#### Find the IP address resolved for the website tryhackme.me in the VM's local hosts file.
```
192.168.1.140
```
#### Open the command prompt & enter ```arp -a```, what is the physical address for the IP address 255.255.255.255?
```
ff-ff-ff-ff-ff-ff
```

## Taks 5: Application Management
### Trusted Application Store
* repository of approved applications that Microsoft has deemed non-threatening
* can be accessed by running ```ms-windows-store``` in the ```run``` dialogue

### Safe App Installation
* setting that will only allow applications to be installed from the **Trusted Application Store**
* ```Settings => Select Apps & Features``` then select ```The Microsoft Store Only``` from the drop-down menu

### Malware Removal through Windows Defender Anti Virus
* **Windows Defender Anti Virus** is a complete anti-malware program capable of identifying malicious programs & taking remedial measures like quarantine
* is managed in **Windows Security Center** as of **Windows 10**
* has four main functionalities:
  * **Real-time protection**: enables periodic scanning of the system
  * **Browser integration**: enables safe browsing by scanning all downloaded files, etc.
  * **Application Guard**: allows complete web session sandboxing to block malicious websites or sessions to make changes in the computer
  * **Controlled Folder Access**: protect memory areas & folder from unwanted applications

### Microsoft Office Hardening
* achieving this will be on a per basis scenario as not all environments/users will need/can use the same configuration

### AppLocker
* recently introduced feature that allows users/Admins to block specific executables, scripts, & installers from executing through a set of rules
* in ```Local Group Policy Editor``` ==> ```Windwos Settings ==> Security Settings ==> Application Control Policies ==> AppLocker```
* configure as needed

### Browser (MS Edge)
* the built in web browser in **Microsoft** that is based on **_Chromium_**
* often acts as an entry point to a system for further pivoting & lateral movement
* very important to block & mitigate critical attacks carried out through a browser


#### What extension does Windows Defender Antivirus not scan by default?
```
.ps
```

#### Is it best practice to open a word document that you have received from an unkown email address?
```
nay
```

#### What is the flag you received after executing the Office Hardening Batch file?
```
{THM_1101110}
```


## Task 6: Storage Management
### Data Encryption through BitLocker
* built-in feature of business edition Windows and Home
* ```Start ==> Control Panel ==> System & Securoty ==> BitLocker Drive Encryption```
* a **_Trusted Platform Module (TPM)_** chip is one of the basic requirements needed to support **_BitLocker_**
* keeping the recovery key in a secure place (preferably not on the same computer) is imperative

### Windows Sandbox
* allows you to run an application in a temporary, isolated, lightweight enviornment
* once the **_Windows Sandbox_** is closed, all files, software, & states will be deleted
* ```Click Start ==> Search for 'Windows Features' & turn it on ==> Select Sandbox ==> Click OK to restart```

### Windwos Secure Boot
* is an advanced security standard
* checks that your system is running on trusted hardware & firmware before booting
* you can check the status of this in the **_System Information_** pane
* you can enable this setting in the **_BIOS/UEFI_** settings

### Enable File Backups
* you can enable backups via ```Settings ==> Update & Security ==> Backup```
* follow the prompts as needed

#### Can you read the last 6 digits of the recover key for a BitLocker instance?
```
377564
```

#### How many characters does the BitLocker recovery key have?
```
48
```

### What is the extension of the backup file on the desktop?
```
.bkf
```


## Task 7: Updating Windows
* while ensuring end points are always up to date with security patches, it is not always as easy as enabling auto-updates
* depending on your environment and use cases, the updates could very well interupt normal business operations
* it would be best to implement a sound **_Change Management_** where the updates can be tested and applications/services be modified as needed before being implemented in production

#### What is the CVE score of the vulnerability CVE-2022-32230?
```
7.8
```
