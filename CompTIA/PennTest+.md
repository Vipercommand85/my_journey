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
who is sponsoring the pen test

what is the purpose of the test
 
**PCI DSS** : Payment Industry Data Security Standard

these govern the pen tester's activites

* test scope
technical/physical/personnel

* internal/external communication
inherent risks with these tests

crashing devices, services, whole servers

corrupting data

degrading perfomance/avialibility of services resulting in Terms of Service (TOS)/regulation/legislation violation

* know who to contact on a per issue basis in a timely manner

### Regulatory Compliance
[**PCI DSS**](https://www.pcisecuritystandards.org/documents/Penetration-Testing-Guidance-v1_1.pdf): industry standard of security requirements for payment card processing

**PCI DSS requirement 11**
: intermnal and external testing that is carried out by the following triggers
- annually
- after significant infrastructure changes

**General Data Protection Regulation(GDPR)**
- European Union (EU) regulation
- data protection and privacy for all individuals in the EU
- companies/organizations that have personnel established in the EU will need to comply with this standard
- gives control to individuals over their personal data 
- **Article 21(1)** requires " a process for regularly testing, assessing and evaluation the effectiveness of technical and organisational measures for ensuring the security of the processing"

### Resources and Budget
* what does each party provide?
* at what point does the engagement begin?
* protect confidentiality of findings
exploitable entry point is confidential information

* does the client know of the engagement taking place
* every task in the test should have a value
if more tests need to be added, a cost should be associated with the additional test(s)

### Impact and Constraints
set expectations on the onset of the engagement
**Impact**
- results of testing
- report vulnerabilities
- remediation, how should the client respond to findings

Disclaimers:
- Point-in-time assessment
- comprehensiveness ie, enterprise/organisation/department

**Technical Contraints**
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

**Web Services/Application Description Language (WSDL/WSADL)**
- XML file with lots of info about web service/application and it's interface requirements
- can be publically available
- can be used to leverage vulnerablities

**SOAP Project File (Simple Object Access Protocol)** 
- not exposed to public
- used by developers in development environment
- used to exchange info for web services
- provides low level web service interface details (input/output/server info)

**SDK Documentation (Software Development Kit)**
- help provide info on tools used to develope software
- can provide what libraries were used in the cration of the application/service

**Swagger Documentation**
- popular open-source framework for developing REST (API) services
- is a light weight API (Application Programming Interface)
- can provide internal info on REST services exposed to clients

**XSD (XNL Schema DEfinition)**
- defines XML documentation content
- view sample application requests to generate a baseline of what should be sent and received to find potential weak spots that can be exploited
- useful starting point when testing web applicatoins when determining what avenues to explore for vulnerabilities

**Architectural Diagram**
- useful for mapping the topology to know how end points communicate with one another
- helpful in determining which end point to attack first and in what order

### Legal Groundwork
**Statement of Work (SOW)**
- clearly states what tasks are to be accomplished
- could be an appendix of a MSA

**Master Services Agreement (MSA)**
- specifies details of the business arrangement

**Non-Desclosure Agreement (NDA)**
- agreement that defines confidentiality, restrictions and/or sharing of information obtained during the PenTest engagement
 - is a bi-directional agreement

**Environmental Differences**
- export restrictions - restrictions on shipments, transfer of technology, or services outside of the U.S. (country the engagement is taking place)
- main focus is on encryption standards from US to other countries
**[U.S. State Department Resource](https://www.state.gov/strategictrade/overview/)**
**Corporate Policies** with the current corperation must always be followed closely

**Written Authorization**
- obtain signiture from proper signing authority
- "get out of jail free" card
- Pen tests can reveal sensitive or confidential information
- activities may be illegal without proper permission
- signed permission makes you a white hat pen tester
 - may need third-party authorization ie. cloud service provider
 - get permission for any outside resources used

### Service Provider Agreements
**Service-level Agreement (SLA)**
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
**Goals-based/objectiuves-based**
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

**White-listed**
- no one can access resources unless specifically granted

**Black-listed**
- everyone can access resources unless specifically blocked

**Security Exceptions**
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
- website archiving and caching
[Google Hacking Database](https://www.exploit-db.com/google-hacking-database)

[**Waybackmachine**](https://archive.org/)

- public source code respos
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

### 






















