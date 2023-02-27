# TOTAL SEMINARS UDEMY CORSE BY MICHAEL SOLOMON

## Section 1: Introduction
1. **Planning and Scoping**
  * Governance, risk, and compliance with regulations and laws
  * scoping your pentest engagement
  * Demonstrating an ethical mindset
2. **Legal and Compliamnce Requirements**
  * Personal and Organization
  * performing passive and active reconnaissance
  * performing vulneravility scans
  * analyzing and discussing the results of the above
3. **Scanning and Testing** using appropreaite tools and techniques
  * researching attack vectors
  * performing attacks on wired and wireless networks, applications, and cloud technologies
  * understanding mobile and IoT vulnerabilities and attacks
  * carrying out social engineering and physical attacks
  * implementing post-explotation techniques
4. **Analyzing Results**
5. **Writing Reports** to discuss remidiation techniques
6. **Communication Results** as well as the process that was taken during the assessment
7. **Tools and Code Analysis**
  * foundational undertanding of the tools being used in the PennTest
  * understanding the basic concepts of scripting
    - Python, Ruby, Perl, JavaScript
  * explaining use cases for various pentesting tools


## Section 2: Planning and Engagement
### Planning a Pen Test
* **PERMISSION IS ESSENTIAL FOR ANY ETHICAL PENTEST**
* knowing how much work will need to be done to complete the requirements
  - do not do more than you've planned for
* watch out for scope creep, adding more task that weren't previously defined
#### [Penetration Testing Execution Standard](http://www.pentest-standard.org/index.php/Main_Page)

### Rules of Engagement
* pay attention to target audience
* who is sponsoring the pen test
* what is the purpose of the test
  * **PCI DSS** : Payment Industry Data Security Standard
#### These govern the pen tester's activites
* test scope: technical/physical/personnel
* internal/external communication: inherent risks with these tests
* crashing devices, services, whole servers
* corrupting data
* degrading perfomance/avialibility of services resulting in Terms of Service (TOS)/regulation/legislation violation

#### Know who to contact on a per issue basis in a timely manner

### Regulatory Compliance
[**PCI DSS**](https://www.pcisecuritystandards.org/documents/Penetration-Testing-Guidance-v1_1.pdf): industry standard of security requirements for payment card processing

##### PCI DSS requirement 11
* intermnal and external testing that is carried out by the following triggers
 - annually
 - after significant infrastructure changes

##### General Data Protection Regulation(GDPR)
- European Union (EU) regulation
- data protection and privacy for all individuals in the EU
- companies/organizations that have personnel established in the EU will need to comply with this standard
- gives control to individuals over their personal data 
- **Article 21(1)** requires " a process for regularly testing, assessing and evaluation the effectiveness of technical and organisational measures for ensuring the security of the processing"

### Resources and Budget
* what does each party provide?
* at what point does the engagement begin?
* protect confidentiality of findings
* exploitable entry point is confidential information
* does the client know of the engagement taking place
* every task in the test should have a value
 * if more tests need to be added, a cost should be associated with the additional test(s)

### Impact and Constraints
set expectations on the onset of the engagement
###### Impact
- results of testing
- report vulnerabilities
- remediation, how should the client respond to findings

###### Disclaimers:
- Point-in-time assessment
- comprehensiveness ie, enterprise/organisation/department

###### Technical Contraints
- limitations that reduce scope
- production components
- out-of-service devices
- can't access
 - physical/geograhical access limitiations
 - legal/regulatory/out of scope

### Support Resources
**Black Hat Hacker**: no inside knowledge of systems and topology

**White Hat Hacker**: opposite of black hat

**Grey Hat Hacker**: some information woll be available but not as much as a white hat

###### Web Services/Application Description Language (WSDL/WSADL)
- XML file with lots of info about web service/application and it's interface requirements
- can be publically available
- can be used to leverage vulnerablities

###### SOAP Project File (Simple Object Access Protocol)
- not exposed to public
- used by developers in development environment
- used to exchange info for web services
- provides low level web service interface details (input/output/server info)

###### SDK Documentation (Software Development Kit)
- help provide info on tools used to develope software
- can provide what libraries were used in the cration of the application/service

###### Swagger Documentation
- popular open-source framework for developing REST (API) services
- is a light weight API (Application Programming Interface)
- can provide internal info on REST services exposed to clients

###### XSD (XNL Schema DEfinition)
- defines XML documentation content
- view sample application requests to generate a baseline of what should be sent and received to find potential weak spots that can be exploited
- useful starting point when testing web applicatoins when determining what avenues to explore for vulnerabilities

###### Architectural Diagram
- useful for mapping the topology to know how end points communicate with one another
- helpful in determining which end point to attack first and in what order

### Legal Groundwork
##### Statement of Work (SOW)
- clearly states what tasks are to be accomplished
- could be an appendix of a MSA

##### Master Services Agreement (MSA)
- specifies details of the business arrangement

##### Non-Desclosure Agreement (NDA)
- agreement that defines confidentiality, restrictions and/or sharing of information obtained during the PenTest engagement
 - is a bi-directional agreement

##### Environmental Differences
- export restrictions - restrictions on shipments, transfer of technology, or services outside of the U.S. (country the engagement is taking place)
- main focus is on encryption standards from US to other countries
**[U.S. State Department Resource](https://www.state.gov/strategictrade/overview/)**
**Corporate Policies** with the current corperation must always be followed closely

##### Written Authorization
- obtain signiture from proper signing authority
- "get out of jail free" card
- Pen tests can reveal sensitive or confidential information
- activities may be illegal without proper permission
- signed permission makes you a white hat pen tester
 - may need third-party authorization ie. cloud service provider
 - get permission for any outside resources used

### Service Provider Agreements
##### Service-level Agreement (SLA)
- legal agreement between a service provider and a client
- determines quality of work
- will specify availability of services
- will specify responsibilities of all parties involved with the engagement
- may include requirements and limitation for penetration testing

### Standards and Methodologies Part 1
**[MITRE ATT&CK Framework](https://attack.mitre.org)**
- organizes known adversary tatics, techniques and procedures
- contains mobile and enterprise tactics and techniques
- allows you to determine if controls and technology are implented in such a way to detect and thwart known TTP's

**[Open Web Application Security Project (OWASP)](https://www.owasp.org)**
- nonprofit resource to help make web applications more secure

**[OWASP Top 10](https://www.owasp.org/Top10/)**

### Standards and Methodologies Part 2
**National Institute of Standards and Technology (NIST)**
**[U.S. Standards Authority](https://www.nist.gov)**
 
**[NIST Cybersecurity Framework (CRF)](https://www.nist.gov/cyberframework)**
- framework to construct a cybersecurity program

**[NIST Special Publication (SP) 800-171-3.11.2, 3.11.3](https://csrc.nist.gov/publications/detail/sp/800-171/rev-2/final)**
- goes over security controls of nonfederal systems and organizations

**[NIST SP 800-53 Rev 5](https://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-53r5.pdf)**
- comprehensice documentation that lays out a vision of what type of security and privacy controls that are nessecary in todays IT environments 

**[Open-source Security Testing Methodology Manual (OSSTMM)](https://www.untrustednetwork.net/files/osstmm.en.2.1.pdf)**
- dated open-source manual for testing security controls

**Information Systems Security Assessment Framework [(ISSAF)](https://www.untrustednetwork.net/files/issaf0.2.1.pdf)**
- comprehensive security assessment framework

- dated but open-source and extensive

### Enviornment and Scoping Considerations
##### Network
- Physical vs. virtual segmentation
- Wired vs. wireless
- Media: RJ, coaxial, fiber optics, RF, 802.11*, etc
- LAN / CAN / MAN / WAN

#### Applications
- Nature of application(s) in use
 * CMS, Finacial, ERP, 
- Third-party or internally developed
- Architecture ie. client/sever, cloud, datacenters, 
- Cloud Enviornments
 * private vs public vs hydrid
 * on-premises vs cloud distribution

#### In-Scope Assets
- wireless networks
- IP ranges
- domains, forests, OUs in AD
- APIs
- DNS

### Scoping the engagement
#### Types of assessment
##### Goals-based/objectiuves-based
- **Goals-based** testers will work to fulfill goals that were determined prior to the start of the engagement
- **Objectives-based** assests to protect are defined and testers use all angles to attack protected objectives
- Compliance-based
- used to show compliance ie. PCI-DSS

**Red Team**
- ongoing team that acts like attackers to use any means to access objective(s)
- single compromise is success

**Blue Team** 
- team used to stop the **Red Team** from succeeding and to ensure that security controls and technology are utilize to their full potential

### Ethical Mindset
- start with a trusted team as members are entrusted with substantial authority
- backgrounf checks of Pentesting team
- immediately report breaches/criminal activity
- define a reporting process
- preliminary info releases are acceptable
- limit the use of tools to a particular engagement
- avoid scope creep
- do not run test that cross engagement boundaries
- limit invasiveness based on scope
- pay attention to limitations defined by the scope
- watch out for long running test and redirects
- risks to the professional including fees/fines, or court appearnces needed

### Lab Enviornment
- this is a very subjective area and there is one right way to set this up

### Project Stategy and Risk
#### Condideratoins

##### White-listed
- no one can access resources unless specifically granted

##### Black-listed
- everyone can access resources unless specifically blocked

##### Security Exceptions
- **IPS** ( Intrusion Prevention System)/**WAF**( Web Application Firewall) white-list
- **NAC**( Network Access Control)
- **Certificate pinning** (public key pinning)

- explore company policies to learn about security considerations

### Scope Vulnerabilities
**Scheduling**
- clear when and can run test(s)
- notifications of who should be notified of certain findings
- when the test(s) should be completed

**Scope Creep**
- client rquests additional taks to be performed after **SOW** is signed
- takes resources away from the core **SOW** tasks
- nust get authorization for any **SOW** modifications

**Threat Actors**
- what role will you assume as defined by yourself or the cleint
- **APT**(Advanced persistent threat)
- **Script Kiddies**
- **Hacktivist:** is an activist that uses hacking skills to attack an organization/company that they feel are doing harm to people or groups of people through their business practices
- **Insider Threat** typically an employee/member of an organization that wants to do harm to the organization

**Capabilities**
- what resources are able to be used during the engagement
- will you have physical access or will be testing the physical controls of a facility
- do you have a support structure that is helping in this engagement

**Intent**
- power/revenge
- status/validation
- monetary gain
- ideology

**Threat Model**
- gather information and identify assets
- rank pertinent threats
- map threats to the assests

### Compliance-based Assessments
- rules to complete assessments are usually predefined by a standard
- password policies
- data isolation
- ecryption key management
- limitations put forth by the standard or organization
- helps to clearly define objectives based on regulations


## Section 3: Information Gathering and Vulnerability Scanning
### Scanning and Enumeration
**Information Gathering**
- scanning is the process of looking at some number of "thing" to determine characteristics
- commonly used in pen testing to uncover target vulnerabilities
- many types of scan targets ie networks, network devices, computers, applications/services

**Enumeration**
- counting the detected instances of some target class
- target classes include hosts, networks, domains, users, groups, network shares, web pages, applications/services, tokens

### Scanning Demo
- ensure that you are know the target IP range to be scanned
```bash
nmap -sP [TARGET IP ADDRESS RANGE/HOST]
```
- -sP is a ping sweep scan that sends out ICMP packets to see what hosts are active
- many admins set firewall rules to drop/block these packets
- can use cider notation on the IP address to scan a network/subnetwork 
```bash
arp-scan [TARGET IP ADDRESS RANGE/HOST]
```
**ARP** Address Resolution Protocol will look at a table of MAC addresses to map an IP address to
- can utilize cider notation with the IP address to scan a network/subnetwork

#### Web DNS Lookup
**[WhoisLookup](http://whois.domaintools.com)**
- will map a domain name to an IP address if the domain has been registered with a registrar

### Packet Investigation
**Packet Crafting**
- creating specific network packets to gather information or carry out attacks
- some tools include **netcat, nc, ncat, hping**
- inspect packets with tools like **Wireshark**

#### Inspecting Targets
**Fingerprinting**
- gathering more information about a specific end point such as OS type and version

**Cryptography**
- inspect certificates to conduct **MITM attacks**

#### Eavesdropping
- RF communication monitoring
- **Sniffing** is the act of intercepting packets and inspecting their contents
- **wireshark and tcpdump** can be used with wired connections
- **aircrack-ng** is the most popular tool for wireless connections

### Application and Open-source Resources
#### Decompilation/Reverse Engineering
**source code** is written by a developer/engineer that is human read able
**compiler** is a program that is used to chagne source code to compiled code or executable code in machine language
**Decompiler** attempts to convert executable code into source code
- this can be very diffcult to read because the decompiler is guessing at what the source code would look like and how it would read
- sometimes target is not direct executable ie. Java

#### Debugging
- allows you to run an executable in a controlled manner
- make it easy to stop and examine memory at will
- can reveal a program's secrets and weaknesses
- **windbg** Windows debugger

#### Open Source Intelligence Gathering (OSINT)
[**CERT (Computer Emergency Response Team)**](https://www.us-cert.gov)
- National Cybersecurity and Communications Integration Center (NCCIC) is the nation's flagshio cyber defense, incident response, and operational integration center

[**NIST**](https://csrc.nist.gov)
- up to date information on vulnerabilites provided by **Computer Security Resource Center**

[**JPCERT (Japan's CERT)**](https://www.jpcert.or.jp/english/vh/project.html)

[**CAPEC (Common Attack Pattern Enumeration & Classification)**](https://capec.mitre.org/)

[**Full Disclosure**](http://seclists.org/fulldisclosure/)
- popular mailing list from nmap creaters

[**CVE (Common Vulnerabilities and Exposures)**](https://ccve.mitre.org/)
- list of common vulberabilities and participation groups

[**CWE (Common Weakness Enumeration)**](https://cwe.mitre.org)

### Passive Reconnaissance
- reconnaissance that does not make physical or interactive connection to a target
- need to determine the deployment model ie cloud or self-hosted
- social media/job posting scraping
**Cryptograhpic Flaws**
- [**Secure Sockets Layer (SSL) certificates**](https://gbhackers.com/testssl-sh-tls-ssl-vulnerabilities/)

**Revocation**
- learn how and why tokens are revoked
- avoid allowing revoced tokens to be used in test

**Data**
- [**Paasword dumps**](https://haveibeenpwned.com/)
- file metadata will give a lot of information
- strategic search engine analysis and enumeration
- [**Shodan**](https://www.shodan.io/)
- [**Censys**](https://censys.io/)

website archiving and caching
- [**Google Hacking Database**](https://www.exploit-db.com/google-hacking-database)
- [**Waybackmachine**](https://archive.org/)

public source code respos

[**Github**](https://github.com/)

[**Sourceforge**](https://sourceforge.net/)

[**Bitbucket**](https://bitbucket.org/)

#### OSINT Tools
- [**Recon-ng**](https://www.kali.org/tools/recon-ng/)
- [**ThreatPinchLookup**](https://github.com/cloudtracer/ThreatPinchLookup)
- [**VFeed**](https://github.com/toolswatch/vFeed)
- [**Vulnix**](https://github.com/flyingcircusio/vulnix)
- [**Great list of OSINT Tools**](https://securitytrails.com/blog/osint-tools)

#### Sources
[**National Vulnerability Database (NVD)**](https://nvd.nist.gov/)

[**CVE vs NVD**](https://cve.mitre.org/about/cve_and_nvd_relationship.html)

### Active Reconniassance
#### Defense Detection
searching out what defensives the target has around their end points
- load balancer detection
- WAF detection
- [**WafWoof**](https://github.com/sandrogauci/wafwoof)
- [**https-waf-detect nmap script**](https://nmap.org/scripts/https-waf-detect.html)

#### Antivirus Detection
- examine e-mail headers and footers
- [**BeEF / mitmf (Kali)**](https://securityonline.info/detect-antivirus-softeare-victim-machine-without-user-interaction/)

#### Firewall
- [**Firewalk (Kali)**](https://www.kali.org/tools/firewalk/)

#### Wardriving
- act of driving around with high gain attenas in order to get a signal from different wireless networks
- very old practice from when wireless was first being introduced
- [**Wardriving Intro**](https://www.geeksforgeeks.org/wardriving-introduction/)

#### Cloud Assest Discovery
[**CloudBrute (Kali)**](https://www.kali.org/tools/cloudbrute/)

[**OWASP Amass**](https://github.com/OWASP/Amass)

#### Third-party Hosted Service
- similar approach to cloud assest discovery
- often more restrictions (external)

### Vulnerability Scanning
- systematic approach to examining targets to identify known weaknesses

#### Types OF Scans
- Full scan will scan ports, services, and vulnerabailites
- not stealthy
```bash
nmap -A <target>
```
```bash
perl nikto.pl -h <target>
```
- command might be **nikto** if you have executable version of this program
- **OpenVAS** is an open-source version of Nessus

- Port Scan
```bash
nmap -p <ports> <target>
```
- Stealth Scan attempts to avoid tripping defesnsive control thresholds
```bash
nmap -sS <target>
```

### Target Considerations
#### Container
* lightweight instance of a VM
* runs on top of host OS
* Docker, Puppet, Vagrant

#### Application Scan
##### Dynamic Analysis
* target environment is running and reposnds to queries

##### Static Analysis
* collect artifacts for post-execution analysis

#### Scanning Considerations
* time to run scans- approvaed schedule
* protocols used - largely dependaent on target selection
* network topology - metwork layout of test targets
* bandwidth limitations - tolerance to impact ( affects availability)
* query throttling - slow down test iterations to avoid exceeding bandwidth
 * **nmap -T** is an example of throttling queries
* fragile systems/non-traditional assets

#### Analyze Scan Results
* assest categorization
 * identify and rank assets by relative value
 * vulnerable assets with little value could be a waste of time
* adjudication - determine which results are valid
 * filter out flase positives
* prioritization of vulnerabilities
* highest impact vulnerabilities - ease of exploit vs payoff

### Nmap Scoping & Outout Options
* Network Mapper
* one of the most common and most useful tools for reconnaissance
* **nmap -A** does much of what we're about to see
 * **-A** will include majority of options available with **nmap**

##### SYN SCAN
```bash
nmap -sS <target>
```
**SYN** (stealth) scan
* sends SYB packet and examines response (SYN/ACK means the port is open)
* if SYN/ACK is reecieved nmap will send **RST** to terminate the connection attempt
* will most likely not trip any controls

##### FULL CONNECT SCAN
```bash
nmap -sT <taget>
```
* this will complete the 3 way TCP handshake
* more reliable since there was a connection
* will alert more controls this way

##### Service ID Option
```bash
nmap -sV <target>
```
* attempts to determine service and version info
```bash
nmap -sV --version-intensity <level>
```
* **0** will probe as little as possible to make version determinations
* **9** will probe **ALL** known versioning parameters per host to make version determinations

##### Timing Options
```bash
nmap -T[level] <target>
```
* range is from **0 - 5**
* **0** is will not gerenate much noise while **5** will

##### Output
```bash
nmap <target> -oA [file name]
```
* **-oA** will create 3 files of the 3 main types; **normal, XML, grep**
* **-oN** normal file type only
* **-oX** XNL file type only
* **-oG** grep file type only

##### Gathering Information with NMAP
```bash
nmao -O <target>
```
* **-O** OS fingerprinting
```bash
nmap -Pn <target>
```
* **-Pn** will disable ping sweep
* usefule if you already know that a certain host is up and available

```bash
nmap -iL [path/to/file]
```
* **-iL** uses a text file that contains a list of targets to scan

#### Prioritization of Vulnerabilities
**Rank Assest** ==> **Rank Vulnerabilities** ==> **Rank Exploits**

##### Leverage Inforamtion
* leveraging gathered information to prepare for exploits by mapping vulnerabilities to potential exploits
* Nmap **vulners and vulscan** scrips
* **Metasploitable** search feature in frame work
* will possibly need to clone a github repo into **/usr/share/nmap/scripts**
```bash
git clone https://github.com/vulnersCom/nmap-vulners.git
```
```bash
git clone https://github.com/scipag/vulscan.git
```
```bash
nmap --script nmap-vulners -sV <target>
```
```bash
nmap --script vulscan --script-args vulscandb=exploitdb.csv -sV <target>
```
* **--script-agrs vulscandb=[VALUE]** tells nmap ti use only db to scan whihc is specified

#### Common Attack Techniques
* some Windows exploits can be run in Linux
* [**cross-compling code**](https://www.hackingtutorials.org/exploit-tutorials/mingw-w64-how-to-compile-windows-exploits-on-kali-linux/)
* may need to/want to modify an exploit that is found so that you are able to bypass any comtrols that are in place that are looking for signitures of malware
* exploits may, and most likely will, need to be chained together to compromise a device/system to gain access to another system
* lab environment is ideal for proof-of-concept development

###### Social Engineering
* attacks that focus on manipulating humans into giving out information that they normally wouldn't give out

###### Credential Brute Forcing
* using all possible actions to uncover credentials for accessing a device/system
* very likely to set off controls that will at some point block/drop any traffic coming from your IP

###### Enlightened Attacks
* using dictionary attacks to uncover credentials of users
* will not send as many traffic as brute forcing
* passwords are normally stored in a hash
 * **hash** will take input, run it through an algorithm and generate a fixed length output that will always be the same for the given input
* **rainbow table** a list of pre-hashed passwords from a dictionary attack

### Automating Vulnerability Scans
#### Goals of Automation
* Repeatability
* Minimal Interaction
* Exception-only notification
* Must handle multiple environments
 * Multi-OS
 * Cloud, on-prmise, and third-party

#### Vulnerability Tools and Automation
* command-line tools are easy to automate
 * scripts and schedulers
 * analysis to minimize false postives

### Credential Attacks
#### Hydra
* a command-line tool for brute forcing credentials
* watch for leadin spaces when creating a dictionary list
```bash
hydra -L usernamelist.txt -P passwordlist.txt ftp://<target>
```


## Section 4: Network-Based Attacks
### Exploit Resources
#### [**Exploit Database (DB)**](https://www.exploit-db.com)
* maintained by [**Offensive Security**](https://www.offensive-security.com/)
* CVE compliant archive of public exploits

#### [**Packet Storm**](hhtps://www.packetstormsecurity.com/)
* global security resource
* purpose is to provide a current repository of security threat information

### Network-Based Exploits
#### NETBIOS name service (NBNS)
* part of NetBIOS-over-TCP
* similar functionality to DNS

#### LLMNR (Link-local Multicast Name Resolution)
* protocol based on DNS packet format
* allows IPv4 and IPv6 name resolution on the same local link

#### DNS & ARP Poisoning

#### SMB (Srver Message Block)
* protocol used in Windows to provide file and printer access and remote service access
* Linux can access these resources using **SAMBA**
* TCP ports 139 and 445
* **EternalBlue/WannaCry** ransome ware used SMB to propagate

#### SNMP (Simple Network Management Protocol)
* used to query and manage IP address for devices
* multiple version with **SNMPv1 being insecure**

#### SMTP (Simple Mail Transport Protocol)
* standard protocol for transmittin email
* open relay, local relay, phishing, spam, etc.

#### FTP (File Transfer Protocol)
* insecure protocol for transfering files
* no ecryption for transfers and credentials
* easy for attackers to use for data exfiltration


### FTP Exploit Demo
```bash
nmap --script vulscan --script-args vulscan=exploitdb.csv -sV -p 21 <target>
```
* this command will map any exploits knows for the version of FTP on the target

### MITM Exploits
* collects of attacks where the attacker intercepts messages between a sender and receiver
* attacker can modify.regenerate or forward intercepted messages

#### DNA Cache Poisoning
* attacker compromises a DNS server and changes a known good domain name's IP address to an IP address of their choice

##### ARP Spoofing
* similar to DNS poisoning but with local MAC addresses

##### Pass the Hash
* attacker intercepts an NTLM hash (user credential) and reuses it to appear as an authenticated user to Windows

##### Replay Attacks
* an attack where the attacker captures network packets to then use them at a later point in time to replay an authenticated user's actions

##### Relay Attacks
* where captured packets are sent to an alternate destination instead of the original destination

##### SSL (Secure Sockets Layer) Stripping
* where an attacker decrypts network traffic and then sends the packets unencrypted to their chossing

##### Downgrade
* where a proxy negoatiates with a server to chose the least sercure encryption standard so that the contents could be easily decrypted

##### DoS (Denial of Service)/stress test

##### NAC (Network Access Control) bypass

##### VLAN ( Virtual Local Area Network) Hopping


## Section 5: Selecting Pen Testing Tools
### Wireless Exploits
* wireless and RF use broadcast technology
* any wireless receiver within range of the wireless transmitter can intercept packets
* **aircrack-ng** is a tool that allows you to grab, modify, and process wireless transmissions

#### Evil Twin
* uses a clone of a valid WAP to have clients connect to it
* **Karma attack** (Karma Attacks Radio Machines Automatically) device that listens for an SSID request and pretends to be that valid WAP
* **Downgrade Attack** attempts to negotiates a more insecure protocol

#### Deauthentication Attacks
* DoS attacks that disrupts communication between user and WAP

#### Fragmenatation Attacks
* DoS attack that floods a network with datagram fragments

#### Credential havesting
* process of capturing or discovering valid login information
* social engineering, etc.

#### WPS Implentation Weakness
* consumer grade WAPs could allow an attacker to learn the WPS PIN

### Bluetooth Vulnerabilities
#### Bluejacking
* unsolicited messages to a Bluetooth enable device

#### Bluesnafing
* stealing information from Bluetooth-enabled devices

### Other Wireless Vulnerabilities
#### RFID Cloning
* unauthorized copy of device's RF signal

#### Jamming
* DoS attack that diables communication among devices

#### Repeating
* recieving and retransmitting a signal to increase range


### Wireless Exploits Part 2
#### Data Modification
* unauthorized wireless acces to change actionable data
* may focus on altering configuratoin to eas further access/attack

#### Data Corruption
* attack on availability
* targets may be valuable data and/or configuration settings

#### Capture Handshake
* capturing the TCP 3-way handshake to replay/impersonation attacks
* alos known as **On-path** attacks


## Section 6: Reporting and Communication
### OWASP Top 10
* open source web application security project that outlines the top 10 most seen vulnerable aspects of web applications
* the principles listed in the project can be used for non-web applications

### Application Exploits, Part 1
#### Injection Attacks
* inserting additional data into an application beyond what is expected
* **SQLi (Structured Query Language Injection)** is adding specially crafted SQL inout to extract/modify data or execure commands
* **HTML injection** is adding HTML code/submitting data to change how a page works or the data is handled
* **Command Injections** is adding command line options that change the way commands operate
* **Code Injection** is generalized SQLi, adding code to any language to change a program's behavior

### SQLi 
```bash
sqlmap -u "<website>" --cookie="<cookie>"
```
* this tool will test for different types of SQLi a web application is vulnerable to
* will need succesfull login credentials in order for the tool to operate as designed

### Application Exploits, Part 2
#### Credential Burte Forcing
* Offline cracking (**Hydra**)

#### Session Hijacking
* intercepting and using a session token to take over a valid distributed (web) session

#### Redirect
* sending the user to a different site from what they expected

#### Default Credentials
* vendors of software often supply defualt credentials for quick and easy access to the product
* too often many admins do not disable/remove these default credentials from being used
* this information is readily available on vendor's websites/documentation

#### Weak Credntials
* is this why password cracking works

#### Kerberos Exploits
* forging tickets to allow unauthorized access to presources
* used for bypassing authentication controls

#### Authorization Exploits
* **Parameter pollution** is providing custom inout parameters to alter service/API operation

#### Insecure Direct Object Reference (IDOR)
* programming mistake that can allow access to objects that should be reference indirectly so ensure that the proper security controls are being utilized correctly

### Application Exploits, Part 3
#### Cross-Site Scripting (XSS)
* injection attack in which an attacker sends malicios code (**client-side script**) to a web application that a subsequent client runs
* most likely **JavaScript or HTML**

#### 3 most common types
* **_stored/persistent_** is when the attack data (script) is stored discretely on the server
* **_reflected_** is an attack in which the attack code is sent to another client, this is a non-persistent attack
* **_DOM (Document Object Model)_** is when the attack code is injected into an XML file and that file is sent as data
 * XML that contains the client-side script

#### Coss-site Request Forgery (CSRF/XSRF)
* similar to XSS but occurs within an authenticated session
* **XSRF** attacks the user
* attacker can cause authorized user to take some action by clicking a link

#### ClickJackicking
* tricking a user into clicking a different link or obkect that was intended

### Security Misconfiguration
#### Directory traversal
* allows users to navigate outside a web server's root directory

#### Cookie Manipulation
* access to cookies can allow an attacker to cahnge the way in which a web application operates in general, or just for a specific user/session

#### File Inclusion
* related to directory traversal
* attacker is allowed to build a path to an .exe file or a file to access

### Code Vulnerabilities
#### Unsecure Code Practices 
##### Comments in source code
* good for developers and technical personnel
* bad for keeping secrets

##### Lack of Error Handling
* bad things happen, developers don't think of everything
* overly verbose error handling

##### Hard-coded Credentials
* happens often - compiled and interpreted (strings commands)

##### Race Conditions
* resource should be validated before it's used, ie cheching file is in a place
* **TOC (Time of Check)/TOU (Time of Use)**
 - gap between checking a condition and using that resource
 - attackers can influence other events and affect operation

##### Unauthorized use of functions/unprotected API (Application Programming Interface)

##### Hidden Elements
* hidden attribute in XM/HTML (doesn't hide data in the source code)
* sensitive information in the DOM

##### Code Signing
* certificates can authenticate author's identity, ensure integrity
* lack of code signing allows attackers to modify code between deployment and execution

### API Attacks and Attack Resources
#### RESTful (Representational State Transfer)
* architectural syle for distributed application using HTTP
* based on HTTP verbs - simple and lightweight
* popular in mobile apps

#### Extensible Markup Language Remote Procedure Call ( XML=RPC)
* XML used to encode remote procedure calls transported via HTTP

#### SOAP (Simple Object Access Protocol)
* older more structed distributed service call architecture
* uses payload and envelope model

### AttacK Resources
#### Word Lists
* lists of commonly used authenticatio credentials
* cracking utilities uses these to carry out brute-force attacks
* some tools include common word lists ie Kali, Metasploit, etc.

### Privilege Escalation (Linux)
#### SUID/SGID Programs
* permission to execute a program as executable's owner/group
```bash
ls -l
```
* if you see **-r-sr-sr-x** for a file after using the above command, this means that the SUIG and SGID have been set
* if you can run this program(s) and crash it, you might be left at an elevated shell prompt

#### Unsecure SUDO
* authorized users can execute commands as if logged in as the root user

#### Ret2libc
* stack overflow attack
* replaces current stack return address with attacker-chosen address of another subroutine
* Libc includes useful calls, such as 'system' calls

#### Sticky bits
* directory permission
* multiple users can create, read, and write files, but only the owner can delete
* _ls_ command with show a '_t_' in the last bit of the permissions

### Privilege Escalation (Windows)
#### CPASSWORD
* Group Policy Preference attribute that contains passwords
* SYSVOL folder of the Domain Controller (encrypted XML)

#### LDAP (Lightweight Directory Access Protocol)
* stores passwords in clear text

#### Kerboroasting
* Domian users can query Kerberos tickets for other users

#### LSASS (Local Security Authority Subsystem Service)
* enforces security policy

#### Unattended installation
* feature that allows provision new machines rapidly without user interaction
* will need to provide credentials to complete this task
* **PXE(Preboot Execution Enviornment)** will store credentials to allow the unattended installation to be completed

#### SAM Database (Security Account Manager)
* database that contains user passwords

#### DLL hijacking (Dynamic Link Library)
* forcing a loader to load a malicious DLL

### Miscellaneous Privilege Escalation
#### Services in Windows
##### Unquoted service paths
* allow abbreviated attack paths (without spaces)

##### Writable service paths
* allow attacker to replace services' path with the path of malicious programs

#### Unsecure file/folder permissions
* root installs allow read/write by any user

#### Keyloggers
* records every keystroke

#### Scheduled Taks
* attackers may add new tasks to run persistently with elevated privileges

#### Kernel Exploits
* unpatched systems are vulnerable

### Miscellaneous Host Vulnerabilities
#### Default Accounts
* disable accounts that are not being used

#### Sandbox Escape
* **shell upgrade** - gaining acces to a shell with higher privilege
* **VM** - escaping a VM may allow access to underlying environment
* **COntainer** - similar to VM escape (ie. **Docker**)

#### Cold Boot Attack
* ability to physically reboot a system ( can allow access to encryption keys)
* physically security is esential to stopping this attack

#### JTAG debug (Joint Test Action Group)
* is an industry standard for verifying designs and testing printed circuit boards after manufacture
* can allow attacker to interact with chips

#### Serial Console
* ability to plug dircetly into a device to gain keyboard access


## Section 7: Attacking the Cloud
### Cloud Attacks, Part 1
#### Credential Harvesting
* using different techniques to compromise credentials used to access cloud resources

#### Privilege Escalation
* leveraging application or service vulnerabilities to carry out unauthorized actions

#### Account Takeover
* after compromising credentials, attachers can change access configuration to deny the rightful owner access

#### Metadata Service Attack
* service that provides information about how to access hosted services
* compromised metadata service could report malicious service information

#### Misconfigured Cloud Assets
##### Identity and Access Management (IAM)
* incorrect/malicious authentication/authorization

##### Federation Misconfigurations
* deny access to authorized subjects or allow access to unauthorized subjects
* potential to leak credentials

##### Object Storage
* improper settings could allow unauthorized access

##### Containerization Technologies
* improper container configurations can allow unauthorized connections

### Cloud Attacks, Part 2
#### Resource Exhaustion
* similar to classic DoS/DDoS attacks
* threat to service and server availability

#### Cloud Malware Injection Attacks
* delivering malware to cloud-based VMs and containers
* similar to malware delivery for physical servers

#### DoS Attacks
* saturate network or CPU with traffic/work to leave no capability for authorized processes

#### Side-Channel Attacks
* generally carried out by a malicious VM that sample system performance during crytographic operations to disclose key information

#### Direct-to-origin Attacks
* attacks that penertate layers of devices intended to protect the true network's addresses
* two-step-attack - first find the real network, second attack the end point directly


## Section 8: Specialized and Fragile Systems
### Mobile Attacks
#### Reverse Engineering
* decomposing steps in a process to determine weaknesses
* attackers use it to find vulnerabilities
* can be used to select appropriate controls

#### Sandbox Analysis
* analyzing malware or exploit on isolated device/system
* exploit is contained within the sandbox
* ideal to disconnect/disable any network device so the malware/exploit doesn't make any calls out into the web

#### Spamming
* type of DoS attack
* flooding channel with useless traffic to reduce the usability of useful messages

#### Insecure Storage
* unencrypted and easy for apps to access

#### Passcode Vulnerabilities
* weak and easy to guess

#### Certificate Pinning
* limiting certificates that devices or apps will accept

#### Using Known Vulnerable Components
* dependency vulnerabilities including libraries or other included code
* patching fragmentation - only patching part of a vulnerability or some systems/components

#### Root Privileges
* potential for attacjer to elevate permissions by leveraging an escape vulnerability

#### Over-reach Permissions
* allows app to do more than is necessary

#### Biometrics Integration
* any authenticated method must be implemented securely and limited in its use

#### Business Logic Vulnerabilities
* vulnerable software that creates a risks of data disclosure, alteration, and availability

### Mobile Tools
[**Burp Suit**](https://portswigger.net/)

[**Dozer**](https://labs.withsecure.com/tools/drozer)

[**Needle**](https://github.com/WithSecureLabs/needle)

[**MobSF**](https://mobsf.github.io/Mobile-Security-Framework-MobSF/)

[**Ettercap**](https://www.ettercap-project.org/)

[**Frida**](https://frida.re/)

[**Obejction**](https://github.com/sensepost/objection)

[**Andriod SDK**](https://developer.android.com/studio)

[**apkx**](https://github.com/muellerberndt/apkx)

### IoT Attacks
#### Bluetooth Low Energy (BLE)
* exloits depend on relaxed requirements for Bluetooth reconnection of paired devices

#### Fragile Environment
* low cost, low power devices

#### Availability Concerns
* interrupted availability could negatively affect a larger system
* many IoT devices are expected to be unavailable at times

#### Data Corruption
* skew larger processes and analysis

#### Data Exfiltration
* easier access to raw and granular data

### IoT Vulnerabilities
* Insecure defaults for ease of use and setup
* cleartext communication - lack of encryption
* hard-coded configurations
* outdated firmware and hardware
* data leakage - difficult to secure simple devices in the wild
* use of insecure or outdated components

### Data Storage and Management Interface Attacks
#### Misconfigurations
* on-premises and cloud based
* default/blank username/password
* limit the exposure of the data storage system

#### Lack of user input sanitization
* goal of software tends to be usability, not security

#### Underlying Software Vulnerabilities
* same as with any hardware/software built using components

#### Error Messages and Debug Handling
* error messages can divulge too much architectural information

#### Injection Vulnerabilities
* single quote method

#### Intelligent Platform Management Interface (IPMI)
* purpose is to secure, control and manage servers remotely independent of the host OS
* the elevated permissions requirements of IPMIs make the system vulnerable
* since IPMI are largely hardware-based, patches may not be available or applied
* hardware, software, and component vulnerabilities may pose problems

### Virtual and Containerized Enviornment Attacks
#### Virtual Machine Escape
* accessing resources outside a VM's boundary ie memory, storage, CPU

#### Hypervisor Vulnerabilities
* DoS
* Code Execution
* Memory corruption

#### VM Repository Vulnerabilities
* altering trusted images with malicious ones
* potentiallu easy way to trick users into running malware

#### Containerized Environments
* workload remote access
* acces to sensitive data and resources
* elevated privilege
* execute a host escape


## Section 9: Socila Engineering and Physical Attacks
### Pretext for a Social Engineering Attack
* encourage victims to do at least some of the work
* only resort to technical exploits to carry out what social engineering cannot
* build a storyline that sounds plausible and encourages victims to participate
* depends on urgency, need, and consequences of inaction

#### Social Engineering
* tricking or coercing people into violating security policy
* depends on willingness to be helpful
* human weaknesses can be leveraged
* may rely on technical aspects
* will bypass many security controls in place

##### Phishing Attacks
* people are contacted by a seemingly legitimate imposter in an attempt to extract sensitive information

##### Spear phishing
* target a specific person/group

##### SMS Phishing
* using sms test messages

##### Voice phishing

##### Whaling
* targeting personnel from the C-suite

### Spear Phishing Demo
#### SET (Social Engineering Toolkit)
* a framework that simplifies the process of creating social engineering payloads

### In-Person Social Engineeering
#### Elicitation
* gathering information about a system from authorized users

#### Interrogation
* informal interviews with crafted quesions to extract information

#### Impersonation
* pretending to be someone of authority ie, IT or support desk team

#### Shoulder Surfing

#### USB Key Drop
* not always an in-person attack but physical device is being used to accomplish an attack
* can make these drives autoboot once plugged into a USB slot
* typcially want to drop these is an area that people will likely to think this is normal

#### Motivation Techniques
* authority
* scarcity
* social proof
* urgency
* likeness
* fear

### Physical Security
#### Piggybacking/Tailgating
* unauthorized person following an authorized person through a physical control
* dependant on the goodness of people

#### Fence Jumping
* physically bypassing a control

#### Dumpster Diving
* looking through trash for useful information

#### Lock Picking
* opening a lock without a key
* is very good important to have authorization from management team that has authorized the pentest before attempting this action
* **lock bypass** - defeating a lock mechanism without picking them, ie bolt cutters, remove hinges

#### Egress Sensor
* senses a person approaching a door to leave a facility so that a swipe/scan/etc doesn't need to be used to unlock a normally locked door


## Section 10: Post-Exploitation
### Post-Exploitation Techniques
#### Lateral Movement
* **RPC/DCOM (Remote Procedural Call/ Distributed Component Objcet Model)
* **PsExec** is a utility that supports executing processes on other systems (ie. telnet)
* **WMI (Windows Management Instrumentation)** managing deviced and applications from remote computers
* **Scheduled tasks** ability to have calls/malware run at a specific time
* **PS remoting/WinRM** Powershell remoting/Windows Remote Management
* **SMB** protocol for exposing shares to remote computers including Linux
* **RDP** ability to access a desktop from a remote computer (**Apple Remote Desktop**)
* **VNC (Virtual Network Computing)**
* **X-server Forwarding**
 - X-windows access to Linux desktop
* **Telnet** unsecure remote access (everything in clear text)
* **SSH (Secure Shell)** more secure remote access to shell
* **RSH/RLogin** legacy secure remote access
 - should use SSH for secure remote logins

### Post-Exploitation Tools
#### (Empire)[https://www.alpinesecurity.com/blog/empire-a-powershell-post-exploitation-tool/]
* a powershell post-exploitation tool

#### (Mimikatz)[https://www.github.com/ParrotSec/mimikatz]

#### (Bloodhound)[https://www.bloodhound.readthedocs.io/en/latest/]
* uses graph theory to reveal the hidden and often unintended relationships within an Active Directory enviornment
* 4.0 supports Azure

### Network Segmentation Testing
* test to confirm that network segments work as designed
* only approved traffic flows between segments
* no gaps exist that attackers can exploit
* involves scanning and carrying out a vulnerability assessment on each network segment
#### Strategy
* **ICMP/TCP/UDP** scans

### Persistence & Stealth
#### Persistence
* Scheduled jobs/tasks using **Cron in Linux and Task Manager in Windows**
* **daemons** are programs that run in the background, services or processes (ie fptd,sshd,mysqld)
* **Back doors** a program or facility that allows you to log in to a remote end point that will bypass standard security controls
* **Trojan** malware that looks like it does something useful
* **New User Creation** makes later logins easier

#### Stealth
* cleaning up files, including tools installed
* hide any files that you need to leave
* sanitize log files as much as possible
* remove any traces of activity while you were accessing the environment

### Detection Avoidance Techniques
* living-off-the-land technique/fileless malware
* **PsExec** - lightweight telnet replacement for Micorsoft that supports launching remote interactive command prompts
* **WMI** extensions that provide OS interface capability
* **PS remoting/WinRM** are common on most Windows machines that should not trip any security controls
* data exfiltration
* covering your tracks
* Steganpgraphy
* establishing a covert channel for communication


## Section 11: Post-Engagement Activities
### Report Writing
* commincates findings AND recommendations
* primary deliverable
* most likely the only chance to make your points
* digest of all activities and conclusions
* some conclusions are drawn during tests, some result from post-test analysis
#### Resources
[**Pentest-Standard**](https://www.pentest-standard.org)

[**Public Pentesting Report**](https://www.github.com/juliocesarfort/public-pentesting-report)

[**Offensive Security**](https://www.offensive-security.com/reports/sample-penetration-testing-report.pdf)

[**NII Penetration Testing Report**](https://www.niiconsulting.com/assets/pdf/NII_Penetration_Testing_Report_v1.2.1.pdf)

### Tips for Writing a Report
* tell your story
* know your audience(s)
 - executive 1-page summary
 - technical/management
 - motivation - audit?
* leave the reader with a call to action
 - include steps to fix the issues
* your report will be your voice after you leave

#### Try to answer any questions that may arise
* what did you do?
* why did you make the choices you made?
* what did you find and how did your findings affect you conclusions?
* mostly a presentation and summary fo data
* transform as needed into a common format

#### Common Sections
##### Executive Summary
##### Methodology
* your approach to the overall test activities
* tools and techniques
* why you did what did you did
##### Findings and Remediation
* ranked list
 - what you found with importatn findings first
 - what you recommend the client does with options as appropriate
##### Metrics and measures
* details of what you found
* how you assessed each finding
* [Risk Rating](https://www.pentest-standard.org/index.php/Reporting)
##### Summary - call to action

#### Best Practices
##### Risk Appetite
* amount of risk a client is willing to accept
* tone of entire report should be based on the company's appetite for risk
* **risk appetite statement** should appear in the report introduction
##### Report Storage
* reports should become part of the organization's document repository
* used as input for future pen tests and other assessments
* security policy should state how long reports are kept
##### Report Handling and Disposition
* security policy should state how assessment reports are stored
* how are reports are handled at EOF?

### Important Components of Written Reports
#### Note Taking
* is very important, do not rely on memory for any meetings or activities
* ongoing documentation during tests
* screenshots are extremely helpful
#### Common themes/root causes
* use common vulnerability entries
* capture environment and any noticeable conditions
* document any procedures that deviate from well-known best practices

### Mitigation Strategies
* nearly every pen test will discover multiple vulnerabilities
* pen test report should contain recommendations to mitigate each vulnerability
* solutions vary depending on the vulnerability

#### Categories
1. **People** - behavior changes
 * social engineering training
 * stronger password policy 
2. **Process** - how things are done
 * backup media handling
 * ID management
3. **Technology** 
 * controls based on hardware and/or software

#### Common Findings
* shared local administrator credentials
* weak password complexity
* plain text passwords
* no multifactor authentication
* SQL injection
* unnecessary open services

### Technical & Physical Controls
#### Technical Controls
* those controls that are implented with hardware/software and configuration settings
* process-level remediation by recommending procedure changes to increase security
* patch management via planning, testing, executing, and managing recurring patch activity
* document key rotation cycles and validate that procedures are followed
* ensure that certificates are managed properly and securely
* document how intelectual property and other sensitive data is handled and managed
* review network segmentation policy and procedures for validatin compliance
#### Physical Controls
* these are controls that you can physically touch in the real world
* access control vestibles which allow personnel/automated controls to determine authorization prior to opening inner door
* **Biometeric Controls** what you are or what  you do, harder to spoof
* Video surveillance helps detect unusual behavior

### Administrative & Operational Controls
#### Administrative Controls
* are mainly focused on policy and procedures
* role-based access control, the actual policy that determines roles and permissions for those roles
* implementing secure software development lifecycle such as SCM, SDLC
* minimum password requirements best on best practices and organizational needs
* balance security and usability requirements
* general policies and procedures based on best practices and popular security frameworks to validate that all necessary policies and procedures are in place

#### Operation Controls
* govern how day to day operations occur
* may be based on policy
* job rotation is helpful to identify personnel taking advantage of privilege
* time-of-day restrictions to limit resource and facility access to align with work duty hours
* mandatory vacations may help to uncover abuse of access and/or privilege
* user training on security awareness and procedures

### Communication
* good communication is critical to the penetration test success
* most penetration test should be conducted openly
* cooperation is always enhanced with communication
* clearly define the escelation paths when issues arise
* should have a set timing and frequency of communication usually identified by triggers

#### Reasons for Communcation
* situational awerness - most common recurring reason
* de-escalation of any critical risks from information gathered through the penetration testing
* resolving any conflicts with personnel of organization
* goal reprioritization happens when changes occur while the pentest is being conducted
* all changes must follow stated changes procedures

### Presentation of Findings
#### Executive
* high-level bullet points
* algin every point with a strategic objective
* use business language
#### Management
* focus on high-level goals to satisfy business objectives
* align technical recommendations with business goals
#### Technical
* summary section that focuses on actions to implement
* detail section provides lots of technical information to carry out recommended actions

### Post-Report Activities
#### Client Acceptance
* formal cessation of project activities and acceptance of deliverable
* client should sign a statement of acceptance
* lessons learned
* follow-up on actions/retest
* avoid extending the project scope here without a change process
* attestation of findings - independent review of your report by a third party

### Data Destruction Process
* agreements should include destruction expectations of data
* identify what information collected is in scope
* document procedures followed to dispose of covered data
* provide all data to client in a secure manner and then destroy all that data locally


## Section 12: Tools & Programming
### Using Scripting in Pen Testing
* automate mundane/repetitive tasks
* allows for easy documentation of commands/tools used
* less error proned
* easily repeatable
#### What is a script?
* interpreted sequence of commands
* written in a specific language with its own syntax
* not complied or assembled

### Common Scripting Languages
#### Bash - Bourne Again Shell
* command shell for most Linux/MAC systems
* freely available version of the UNIX Bourne shell (sh)
#### PowerShell - Windows based
* admin and automation shell
* available in Windows since 2006
* powerful scripting language
* exclusively Windows based
#### Ruby
* object-oriented hihg-level interpreted general puropse programming language
#### Python
* object-oriented hihg-level interpreted general puropse programming language
* extensive libraries

### Scripting Basics
#### Variables
* temporary data storage in memory
#### Subtitutions
* input parameters and environment variables
#### Common Operations
* usually for string and comparisons
#### Logic
* controls looping and flow of a script
#### Basic I/O
* read input and write output
#### Error Handling
* when thins don't work
#### Arrays
* simple data structure
#### Encode/Decode
* using base64 and handling special characters

### Bash Scripting Basics
#### Comments
* help you remember what you were doing when writing the script using `#`
* everything after the `#` is part of the comment
#### Variables
* varName=value `name=Michael`
* to print the value stored in a variable use the command **echo** with a **$** in front of the variable name
```bash
echo $name
```
* common to read data into variables as opposed to hard coding too mcuh
* bash variables are untyped
#### Subtitutions
* **Variables** ==> $name
* **Input Parameters** ==> $1,$2,etc.
* **Environment Variables** ==> $PATH
* Bash will set defaults when no other value is provided
```bash
JAVAPATH=${JAVAHOME:=/usr/lib/java}
# := is way to specify another value to set the variable to if the first is empty

OUTPUTDIR=${1:=-/tmp}
# need to use :- instead of := with input parameters
```
### Common operations
#### String Operations
* **Concatenation**
```bash
var="Hello";var=$var World"
```
* **Length**
```bash
${#name}
```
* **Extract a substring**
```bash
${name:3}
```
* **Replacing substring**
```bash
${name/ch/xx}
# will replace "ch" with "xx"
```
#### Compound Operations
* **-a** = AND
* **-o** = OR
* **-eq/==** = EQUAL
* **-ne/!=** = NOT EQUAL
* **-gt/>** and **-ge/>=** = GREATER THAN/GREATER THAN OR EQUAL TO
* **-lt/>** and **-le/>=** = LESS THAN/LESS THAN OR EQUAL TO
* **-n** = NOT NULL (empty string)
* **-z** = NULL (empty string)

### LOGIC
#### FOR LOOP
```bash
for i in $(seq 1 5)
do
 # statements you want to loop through
 # indent for ease of reading
done
```

### Flow Control
#### If/elif Condition
```bash
if [CONDITION]
then
 [COMMANDS]
elif [CONDITION]
 [COMMANDS]
else
 [COMMANDS]
fi
```
#### BASH IF Conditions
* **-d [FILE]** is true if file is a directory
* **-e [FILE]** is trus if file exists
* **-f [FILE]** is true if file exists and is a regular file
* **-z [STRING]** is true if string is a null string
* **-n [STRING]** is true if string is not a null string
* **stringA=stringB** is true if strings are equal
* **stringA!=stringB** is true if strings are not equal
* **test / []** allows to test a certain case
```bash
if test -eq $name "Michael"
if [ $name="Michael"]
```
* **break** exits the current loop iteration
* **exit** exits a script and returns a value (exit code)

### Bash Scripting Techniques
#### I/O - File vs. Terminal vs. Network
* Iput from a terminal use the **read** command
```bash
read -p "enter your name:" name; echo "hi, " $name
```
* input from a file 
```bash
input=[filePathName]
while IFS=read -r f1 f2 f3 f4
# f1-f4 are place holders for variables that will store information based on the $IFS deliminator value
```
* input from a network device
```bash
while read -r inline < /dev/ttyS1
```

#### Error Handling
* **$?** is the exit status of a script
```bash
if ["$?"="0"] then
```

#### Arrays
```bash
bashArray=(val1, val2, vasl3)

# OR

declare -a bashArray=(val1, val2, vasl3)
```
* accessing items in an array
```bash
bashArray=(val1, val2, vasl3)

for i in 123
do
 echo ${bashArray[$i]}
done
```

#### Ecoding/Decoding
* **locale** shows local related environment variables
* can change assignment of **LANG** for local character encoding
 - `LANG=da_DK.UTF-8`
* can use openssl or base54 to encode and decode strings
##### Encoding
```bash
echo string | base64

# OR

base64 <<< string
```

##### Decoding
```bash
echo string | base64 --decode

# OR

base64 -d <<< string
```

### PowerShell Scripts
* will first need to allows PowerShell scripts to run
 - search for PowerShell in the launch search bar and open a session
```PowerShell
Set-ExecutionPolicy Unrestricted
```
* utilize **Windows PowerShell ISE** for ease of editing and running PowerShell scripts

### Ruby Scripts
```ruby
#!/usr/bin/ruby

require 'socket'
# imports a library to create sockets

TARGET = ARGV[0] || '10.10.1.10'
MINPORT = ARGV[1] || 22
MINPORT = ARGV[2] || 80
# variable assignment
# capital varaiables are CONSTANTS
# ARGV[*] sepcifies the first arguemnt that would be supplied on the command line (starts counting from 0)
# || specifies to give the following value as default if it was left blank at the command line

$i = MINPORT.to_i
# .to_i converts the variable to an interger to ensure we do not get any errors
# Ruby creates objects and to have an object do something you will need to use methods (.action) on them 

while $i <= MAXPORT.to_i do
 begin
  socket = TCPSocket.new(TARGET, $i)
  status = "open"
  puts "Port #{$i} is #{status}."
# puts will output a string to the terminal

 rescue Errno::ECONNREFUSED, Errno::ETIMEDOUT
  status = "closed"
 end
 $i = $i + 1
end
```

### Python Scripting
```python
import sys, socket

# this is not the best practice to read in variables
target = sys.argv[1]
minport = int(sys.argv[2])
maxport = int(sys.argv[3])

#important to indent correctly
def porttry(cur_target, port):

# try/except is used for error handling
 try:
  s.connect((cur_target, port))
  return True
 except:
  retunr None


for i in range(minport, maxport+1):
 s = socket.socket(2, 1) #socket.AF_INET, socket.SOCK_STREAM
 value = porttry(target, i)
 if value != None:
  print("Port opened on %d" % i)
```

### Scripting Languages Comparison
|     | Bash | PowerShell | Ruby | Python |
|-----|------|------------|------|--------|
|**Comments**|#|# or <# #>|# or =begin =end|#|
|**Variables-Assign**|varName-value|$varName=value|varName=value|varName=value|
|**Variables-Display** |echo $varName|Write-Host $varName|puts varName|print(varNmae)|
|**Subsitution-Enviornment Variables**|$envVarName|Get-Item Env:varName|ENV['varName']|Os.eviron['varName']|
|**String Lenght**|${string}|(string).lenght|string.length|len(string)|
|**String-Substring**|${string:position}|(string).Substring(start,end)|string[1..3]|string[start:end+1]|
|**String-Replace String**|${string/substring/replacement}|(string).Replace(substr,replStr)|string[1..3]=replStr|string.replace(old,new,count)|
|**AND/OR**|-a/-o|-and,-or,-not !|and &&, or \|\|, not !|and, or, not|
|**Comparisions**|-eq (==), -ne (!=), -lt (<), -le (<=), -gt (>), -ge(>=)| -eq, -ne, -gt, -ge, -lt, -le|==, !=, >, >=, <, <=|==, != (<>), >,>=, <, <=|
|**Looping**|For|For, While, Do-While, Do-Until|while, until, for|for, while|
|**Flow Control**|
```bash 
if condition 
then 
 commands 
elif 
 commands 
else 
 commands 
fi
```
|
```PowerShell 
if (condition){ 
 statements 
}elseif(condition){
 statements 
}else{ 
 statements }
 ```
|
```ruby 
if condition then 
 statments 
elsif 
 statments 
else 
 statements 
end
```
|
```ptyhon 
if conidition: 
 statements 
elif condition:
 statements 
else:
 statements
 ```
|





















































