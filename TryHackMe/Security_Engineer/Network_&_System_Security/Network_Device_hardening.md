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
* **VPNs** are needed in the age of remote work & online communications to protect sensitive data & preserve privacy
* Hardening **VPNs** is crucial to ensure their efficiency which includes **MFA**

### Standard Hardening Practices
* all **VPN** servers consist of a server-side & client-side configurations through a standard config file
* for **OpenVPN** config file is located at ```/etc/openvpn/server/server.conf```
* **Use Strong Encryption Algorithm**: the **cipher** directive can be used to select the encryption scheme
  * possible options for **cipher** include AES, Blowfish, Camellia, etc.
* **Keep VPN Gateway Software Up-to-Date**: ensure the latest security patches & updates have been applied
* **Implement Strong Authentication**: use **TLS** & a secure hashing alogrithm
  * the ```auth``` directive can be used to set the specific hashing alogrithm
  * some options are **SHA1, SHA128, SHA256, SHA512, MD5**
* **Change Default Settings**: be sure the change default **username** & **password**
* **Enable Perfect Forward Secrecy (PFS)**: generates unique session keys for each session to strengthen the security of the VPN connection
  * ```tls-crypt``` directive can be used to enable **PFS**
  * this requires a key that can be generated using ```sudo openvpn --genkey --secret my.key```
  * this key should be placed on the server

#### What is the flag value linked with the cipher directive?
  ```
THM{CIPHER_UPDATED_1101}
```

#### What is the flag value linked with the auth directive?
```
THM{AUTH_UPDATED_123}
```

#### As per the config file, what is the port number for the OpenVPN server?
```
1194
```



## Task 5: Hardening Routers, Switches, & Firewalls
* must be hardened for network infrastructure to be secure and reliable
* by hardening these devices, we can lower the possibility of unauthorized access, avoid data breaches, & ensure network service availability
* a few advantages of this hardening include improved network performance, cyberattack resiliency, & regulatory compliance

### Recommended Hardening Techniques
* **Setting up the device**: enabling logging, setting time zone, hostname, etc.
  * hepls to simplfy incident handling in the event of a compromise
* **Change Default Credentials**: since these default credentials are listed in documentatin, threat actors would have little trouble logging into your itnerface and making unwanted changes
* **Enable Secure Network Protocols**: utlizing secure protocols ensures that traffic is sent across the network encrypted preserving **CIA**
* **Diabling Unnecessary Scripts**: diabling any unauthorized scripts from running, can help to mitigate threat actor persistence
* **Securing WiFi**: should always enable **WPA2/WPA3**
  * disabling **SSID** broadcasting
  * changing default passwords

#### What is the default SSH port configured for OpenWrt?
```
22
```

#### What is the flag that is in the Notes section of System Tab under General Settings?
```
THM{SYSTEM101}
```

#### What is the default system log buffer size value for the OpenWrt router?
```
64Kib
```

#### What is the start priority for the script uhttpd?
```
50
```


## Task 6: Hardening Router, Switches, & Firewalls - More Techniques
### Recommended Hardening Techniques
* **Manage Traffic Rules**: ensure that the **accept/deny** rules are configured appropriately
* **Monitor Traffic**: helps to enable remedial measures to be taken should an unusal influx of network traffic set an alert
  * most network devices provide real-time graphs to monitor the traffic
* **Configure Port Forwarding**: enables internet traffic to be routed to a specific interface/endpoint
  * will also block any other incoming traffic that doesn't match this rule
  * should be used with care, because it could expose internal devices & services to potential security issues
* **Monitor Scheduled Tasks**: important to monitor so that original scheduled tasks have not been tampered with
* **Update Firmware**: essential to avoid being vulnerable to known/unkown attacks

### Additional Techniques in an Enterprise Environment
* considering an enterprise environment might have multiple different vendors, there is no **one-way-fits-all** approach, instead here are some concepts to keep in mind:
* **Configure Port Security**: includes limiting the number of **MAC addresses** registered on a switch port
   * taking action when unauthorized access is detected
   * enables an admintrator to be confident that the data is coming from a valid source & will be forwarded to a legitimate receiver
* **Preventing ARP Spoofing**: most common vectors for **MiTM** attacks
* **Preventing Rogue DHCP Servers**: configure static DHCP binding & ensure no unknown devices are added to a network (**Shadow IT**) by utilizing network mapping tools
* **Enabling IPv6**: has built in support for **IPsec** & provides added support for **CIA**

#### What is the name of the rule that accepts ICMP traffic from source zone WAN & destination zone as this device?
```

```


## Task 7: Important Tools for Network Monitoring
|---------------|--------------------------------------------------------------------------------|
| **Nagios** | popular open-source software for monitoring systems, networks, & infrastructure<br>provides real-time monitoring & alerting for various services & applications |
| **SolarWinds** | comprehensive network monitoring tool that provides real-time visibility into network performance & availability<br>includes network mapping, automated network discovery, & customizable dashboards |
| **PRTG** | all-in-one network monitoring tool that provides comprehensive performance & availability monitoring<br>includes real-time traffic analysis, custom dashboards, & customizable alerts |
| **Zabbix** | powerful open-source network monitoring tool that provides real-time network performance & availability monitoring<br>includes features like customizable dashboards, network mapping, & alerting|


#### Are network monitoring tools capable of detecting bandwidth bottlenecks?
```
yay
```



























