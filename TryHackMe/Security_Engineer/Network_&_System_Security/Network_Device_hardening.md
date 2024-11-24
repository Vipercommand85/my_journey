# Network Device Hardening

## Task 1: Introduction
### Learning Objectives
* Identifying & Mitigating Security Vulnerabilities
* Hardening Network Device Configurations
* implementing Security Best Practives


## Task 2: Common Threat Attack Vectors
### Difference between Network Devices & Endpoint Devices
* **Endpoint** devices refer to any device that can generate or consume data on a network, i.e. laptops, desktops, smartphones, tablets, etc.
    * are typically located at the edge of a network that users interact directly with
* **Network** devices refer to devices that manage the network traffic via routing/forwarding

![image](https://github.com/user-attachments/assets/9b9ac685-116f-4a3b-b41a-3daa1258f83f)

### Common Threat & Attack Vectors of Network Devices
|**Threat**|**Description**|**Attack Vector**|
|------------|-------------|-----------------------|
|**Unauthorized Access**|gain unauthorized control of a network device & then the complete network|* password attacks<br>* exploit known vulnerabilities<br>* social engineering/Phishing attacks|
|**Denial of Service (DoS)**|disruption of critical devices & services to make them unavailable to genuine users|* Flooding devices with fake requests<br>* exploiting vulns in logical or resource handling<br> * manipulating network packets|
|**Man-in-the-Middle Attacks**|intercept the network requests between two parties by masquerading as each to steal information|* ARP spoofing<br> * DNS spoofing<br>* Rogue access points|
|**Privilege Escalation**|gaining higher-level privileges or rights to perform restricted actions|* weak passwords/user same password for user & admin accounts<br>* exploiting vulns<br>* misconfigurations|
|**Bandwidth Thet/Hotlinking**|linking bandwidth-intensive resource from an external website to an original website without permission|* scraping large volumes of data<br>* DoS attacks<br>* malware attacks|

#### What is the device used to control & manage network resources called?
```
netwrok device
```

#### What is the threat vector that includes disruption of critical devices & services to make them unavailable called?
```
Denial of Service
```


## Task 3: Common Harden Techniques
### General Techniques
* **Update & Patching**: ensuring the latest version of the OS & underlying applications are being used as well as installing security patches as needed
* **Diabling unnecessary Servies & Ports**: will help to reduce the attack surface to adversaries
* **Principle of Least Privilege (POLP)**: restrict users & processes to only the minimum necessary permissions required to perform their functions
* **Log Monitoring**: implement a log monitoring system to monitor for unusal activity or security events
* **Backup Regularly**: take routine backups of systems & configurations as they can help recover from a security incident or system failure
* **Enforcing Strong Passwords**: change default login passwords & use strong passwords that are at least **10** characters long with a combination of special characters
* **Multi-Factor Authentication (MFA)**: is an additional security layer requiring 2 or more types of identification before accessing accounts or systems

### Importance of Secure Protocols
* ensures that data, sensitive or not, is transmitted between devices is encrypted 
* help to prevent **MiTM** attacks and other network based exploits

### Removal/Blocking of Insecure Protocols
* help to ensure that secure protocols are being used for tasks

### implementing of Monitoring & Logging Controls
* is essential for detecting & investigating security incidents, identifying performance issues, & complying with regulatory requirements
* **Syslog**: a protocol that standardises the transfer of log messages, with the purpose of storing & analysing to a central server
* **SNMP**: traps a notification sent by a network device to a management system when a predefined event occurs
* **NetFlow**: a protocol used to collect & analyse network traffic data for monitoring & security analysis
* **Packet Captures**: by using tools like **Wireshark** to capture and store network traffic

#### What protocol for transfering files would be an insecure protocol?
```
B: FTP
```

#### The protocol for sending log messages to a centralized server for storage & analysis is called?
```
Syslog
```


## Task 4: Hardening Virtual Private Networks

```
```
```
```



























