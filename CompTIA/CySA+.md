# UDEMY: TOTAL SEMINARS CompTIA CySA+ Cybersecurity Analyst (CS0-002)
## Section 2: Chapter 1: The Importance of Threat Data and Intelligence
### Intelligence Sources and Confidence Levels

#### Open-Source Intelligence (OSINT)
* intelligence anyone can find i.e **Google**, **Job sites**, **Internet Registries**, **Social Media**
* as an analysis you need to be aware of what information is available to the public about your organization

#### Closed-Source/Propreitary Intelligence
* privileged access
* covertly collected

#### Gathering Important Information
* **Timeliness:** recent or current data
* **Relevancy:** does it pertain to our objective
* **Accuracy:** is the intelligence correct

#### Confidence Levels
* evaluation  metric determined by timeliness, relevancy, and accuracy
* assessment of information from sources
* trust of information's quality
* impact likelihood of resulting action

### Threat Indicators and Actors
#### Indicator
* result of an observable event in a network
* any event used to gain understanding
* organizations needed to create standards for threat documentation and communication

#### Indicator Management
* **Structured Threat Information eXpression (STIX)** created by the **MITRE Corp**
* was an effort to standardize threat data communication and documentation
* defines 12 STIX domain objects (SDOs)
  - attack pattern
  - campaign
  - course of action
  - grouping
  - Identity
  - Indicator
  - Intrusion set
  - Malware
  - Observed data
  - Report
  - Threat actor
  - Tool
* 2 STIX relationship objects (SROs)
  - Sighting - something has occured
  - Relationship - connection between two SDOs

#### Exchanging Threat Data
##### Trusted Automated eXchange of Indicator Information (TAXII)
* defines how STIX data is transferred via API
* makes STIX data available to other entities

##### OpenIOC
* open source
* created by Mandiant (now part of FireEye)
* framework for collecting and exchanging indicators of compromise data

#### Threat Actors
##### Nation-state
* sophisticated and well funded
* on behalf of government or government agecny

##### Hacktivist
* individual or groups that pursue social goal through hacking

##### Organized Crime
* in it for the money
* often uses ransomeare

##### Insider Threat
* can be the hardest to protect against because of their credentials
* **Intetional** - disgruntled employee
* **Unintentional** - victim of social engineering

### Threat Trends
#### Threat Classification
* knonw vs unknown threats
* absence of evidence isn't evidence of absence
* Zero-day
  - exploits an undiscovered vulnerability

#### Advanced Persistent Threat (APT)
* well funded often from nation states that are very well coordinated
* operate around the clock everyday
* very focused actors with geopolitical motivation that utilize technical methods

### Intelligence Cycle and ISACs
* method to translate raw data into actionable information

1. Requirements

* what you need i.e domain registration, etc

2. Collection

* collect data through OSINT or propreitary

3. Analysis

* look at what you have and find importance and meaning

4. Dissemination

* explaination of analysis
* recommendation of action given to the customer

5. Feedback

* reponse of the customer
* if the customer requires more information, the cycle starts all over again

### Commodity Malware
* malware for sale is popular in underground communities
* allows attackers with limited skills to engage
* **Malware-as-a-Service**

### Information Sharing
* communities exist to facilitate information sharing
* Information Sharing and Analysis Centers (ISACs)
* utilized by many different industries i.e automtive, aviation, elections, etc.

## Section 3: Chaper 2: Threat Intelligence in Support of Organizational Security
### Attack Frameworks
* help define tatics, techniques, and procedures (TTPs)
* MITRE Corp
  - **MITRE ATT&CK ( Adversarial Tatics, Techniques, and Common Knowledge)**
  - used to track adversarial behavior
  - activities are organized into 12 actions
  1. Initial access
  2. Execution
  3. Persistence
  4. Privilege Escalation
  5. Defense Evasion
  6. Credential Access
  7. Doscovery
  8. Lateral Movement
  9. Collection
  10. Command and Control
  11. Exfiltration
  12. Impact

### Diamond Model of Intrusion Analysis
* shows a relationship between 4 core components
1. Adversary
2. Capability
3. Victim
4. Infrastructure
* developers of this model proposed several axioms that are true for any attack sequence
* axioms summerize how attackers approach the attack they seek to carry out

### KILL Chain
* based on military **F2T2EA**
* **Find Fix Track Target Engage Assess**

### Cyber Kill Chain
* developed by **Lockhead Martin**
* if any link in this chain is broke, the analysist can thwart an attack
* utilized the Kill Chain to develope this framework
* linearizes steps taken to carry out a successful attack
1. **Reconnaissance** - harvesting email addresses, conference information, etc
2. **Weaponization** - coupling exploit with backdoor into deliverable payload
3. **Delivery** - delivering weaponized bundle to the victim via email, web, USB, etc
4. **Exploitation** - exploiting a vulnerability to execute code on victim's system
5. **Installation** - installing malware on the asset
6. **Command & Control (C2)** - command channel for remote manipulation of victim
7. **Actions on Objectives** - with hands on keyboard access, intruders accomplish their original goals

### Threat Research
* useful to add context to alerts
* uncover novel TTPs
* existing controls may miss these novel TTPs

#### Reputational Research
* rating of general perceived risk
* examples of this: Google's Safe Browsing, Talos Reputation Center, VirusTotal

#### Behavioral Research
* create a local environment to test the malicious file, i.e. sandbox
* this way the you can see how the malware will behave without doing any harm to your network or host
* [**Cuckoo Sandbox**](https://www.cuckoosandbox.org)

#### Indicator of Ccompromise (IOC)
* great place to start research to determine if any systems have had or are having incidents of compromise

### Threat Modeling and Intelligence Sharing
* adversary capability
* total attack surface
* attack vector
* impact
* likelihood

#### Microsoft STRIDE Threat
* utilizes catergories based on the **STRIDE** letters to help create a methodology for characterizing IOCs

#### PASTA
* utilizes stages with tasks that will help to characterize IOCs and emulate adversary TTPs

#### Intelligence Sharing
* any intelligence should be shared with the following teams within the organization
  - Incident Response
  - Vulnerability Management
  - Risk Management
  - Security Engineering
  - Dections and Monitoring


## Section 4: Chapter 3: Vulnerability Assement Tools
### Vulnerability Identification
#### Regulatory Environments
* **ISO/IEC 27001**: standard for managing information systems
* **PCI-DSS**
* **HIPAA**
* **GDPR**
* Corprate Policy
* Data Classification Issues within Gov/Corps

#### Vulnerability Identification
##### Assest Inventory
* all endpoints?
* servers only?
* inventory all assests to determine vulnerability identification considerations

##### Asset Criticality
* necessary to determine mediation priorities

##### Active bs. Passive Scanning
* bandwidth and criticality of systems will determine what scanning you will perform

#### Mapping/Enumeration
##### Common Techniques
* ICMP echo request
* TCP SYN to port 443
* TCP ACK to port 80
* ICMP timestamp request
* **nmap** will be the most common and useful tool here

#### Vulnerability Scanning
* web applications

### Scanning Parameters & Criteria
#### Technical Contraints
* need to ensure that you will not negatively affect the network and availability of access to resources

#### Workflow
* work with your available resources (personnel and technical)

#### Sensitivity Levels
* clearace and classified data
* sensitive data (PHI, PII, payment card info, etc.)
* are the teams that consume the data from these sensitive resources authorized to view the data?

#### Segmentation
* VLANs in logical architecture
* understand the network architecture for appropriate scans

#### Vulnerability Feed
* up-to-date known vulnerability information

#### Scope
* how many devices/endpoints

#### Credential vs. Non-Credential Scan
* credential simulates an insider threat type attacks
* non-credential will simulate an unauthorized type attacks

#### Server-based vs. Agent-based Scan
* server-based has a central server that sends our traffic to scan targers but it will increase network traffic
* in an agent-based scan, software will be installed on endpoints and run scans locally and sends back the output back to a central location/server

#### Internal vs. External Scan
* will the scan(s) execute from within the corporate network or outside the network via an external node
* results will vary with each type of scan
* be sure to note the type of scan for clarity

### Scanning Special Considerations
#### Types of data
* scan for everything or just certain types of data
* understand the organization and regulations driving the scans

#### Tools
* updates and plug-ins help automate scans

##### Nessus
* Nessus Attack Scripting Language (NASL)
* allows you to automate aspects of scanning process
* consistency in scans
* recreate scans easily

#### Security Control Automation Protocol (SCAP)
* created by NIST
* defines modules that dictate compliance requirements/settings

#### IDS-IPS
* firewall may reject scans

#### Generating Reports
* Templates/format
* automated vs. manual distribute with a possible presentation

### Validation
* determining whether data is true or not

#### Four different types of responses to valid data
1. True Positive
2. True Negative
3. False Positive
4. False Negative

### Remediations Mitigation
#### Configuration Baseline
* collection of all property settings of an endpoint
* compate to current settings and determine changes
* often implemented in audit process
* find baselines from standards organizations

#### Identify Vulnerabilities
* due to configuration or old software
* recommend patching software, esp security patches

#### Priotitizing
* most curcial vulnerabilities first
* highes probability of occuring with the highest impact

#### Hardening
* process of remediating
* make a device less susceptible to attack/compromise

#### Compensating Controls
* helps to mitigate vulnerability without directly addressing the cause
* firewall with closed ports
* ideally implement layers of compensating controls

#### Risk Acceptance
*  act of knowing that a vulnerability exits but accepting the risk associated with not directly addressing a mitigation
*  would be of a low likelihood **AND** low impact
* document
* have long-term solution to mitigate

#### Verification of Mitigation
* ensures that what you did is what you intended
* possible to run another scan to verify that the mitigation steps removed the vulnerability

### Inhibitors to Remediation
#### Memorandum of Understanding (MOU)
* authorizes/limits scanning activities

#### Service-Level Agreement (SLA)
* dictates what each party does
* may limit remediation actions
* may limit scanning capabilities

#### Organizational Governance
* potential limits on remediation due to collateral impact

#### Business Process Interruption
* ensure that none of the business process(es) are impacted by any remediation(s)

#### Degrading Functionality
* always be midful of the network bandwidth

#### Legacy Systems
* some legacy systems will need some special attention and care to remediate any vulnerabilities

#### Proprietary Systems
* similar to legacy systems with the exception that they provider of the system/software will need to make any changes to mitigate the vulnerability found


## Section 5: Chapter 4: Threats & Vulnerabilities Associated with Specialized Technology
### Web Application Scanners
* likely to be looking at **HTTP/HTTPS** protocols over ports **80/443** respectively

#### OWASP Zed Attack Proxy (ZAP)
* proxy inserted between client and server

#### BurpSuite
* also used as a proxy
* more manually geared with more granularity with settings and features

### Web Application Scanners Part 2
#### Nikto
* a command line tool that scans a host and maps any found vulnerabilities to **OSVDB ( Open Source Vulnerabilty Database)**

#### Arachni
* not installed by default in Kali Linux
* command line tool that scans a host and maps any found vulnerabilities

### Scanning
#### Frequency
* industry regulations help to determine frequency
* regulations vary by industry

#### Resources
* People
* Communication
* Time
* will determine how effecient and effective this campaign will be

#### Constraints
* finding qualified personnel
* techincal capacity

#### Determining Frequency
* effects on workflow
* resources used

#### Feeds
* make sure the feeds are up to date from the vendor

#### Sensitivity
* tune the sensitivity so as not to distrupt normal day to day operations

#### Scope
* special or isolated systems used be addressed and how they will be dealt with

#### Privilege
* credential: will give specific access to teams/team members/devices to allow for ease of access
* non-credential

#### Server or Agent Based ( Respectively)
* centralized
* across network nodes

### Configuring and Executing Scans
#### Nessus
#### Advanced Scan
#### Settings
#### Basic
#### General Tab
* give the scan a name
* description if needed
* specify folder to keep the results in
* specify targets, could be a range of targets i.e 10.10.10.0/24

#### Schedule Tab
* allows you to specify the frequency of the scan

#### Notifications Tab
* can provide an email to be notified when the scan is complete

#### Discovery Tab
* allows you to enable certain techniques to discover hosts
* you can enable or disable scanning of sensitive devices in this tab as well
* also has a section for specifing ports and services to be scanned or skipped

#### Assessment Tab
* have tabs to specify settings for **general purpose, Brute Forcing, Web Applications, Windows, Malware**

#### Report Tab
* used to add and remove features in the final Nessus report generated after the scan has completed

#### Credentials
* options for using credentials for scans

#### Cloud Services
* AWS
* Microsoft Azure
* Rackspace
* Salesforce.com

#### Database
* MongoDB

#### Host

#### Misc
* VMWare ESX SOAP API
* Paolo Alto Networks PAN-OS
* OpenStack
* RHEV

### Reverse Engineering
#### Hardware
* lower cost of manufacturing process makes counterfieting a growing concern
* high-end devices have been counterfieted
##### Trusted Foundaries
* have been created in response to US gov finding coutnerfieted units in their networks
* assures the integrity of products
* assures the integrity of the supply chain
* analysis of hardware components

#### Software
##### Detecting Suspicious Files
* name alone will not reveal this

##### Hashing Fucntions
* there are multiple repositories of known bad files
* comparing files in the network/endpoint to one in these repositories can uncover a malicious file

##### Hashing
* takes a variable length input and produces a fixed length output
* two most popular hashing fucntions are **md5sum** and **shasum**

#### Reverse Engineering Software
* typically use a static, dynamic, and a combination of both approach

##### Static Analysis
* typically involves reading through a binary to figure out program structure

##### Dynamic Analysis
* connectin a binary to a debugger to simulate execution
* in this manner you can probe the program to figure out what it's trying to do, call for resources, output produced, etc.

#### Strings Command
* a command line tool that will parse through the binary looking for and printing to the screen, any ASCII strings it finds

#### Binary Ninja
* popular free demo version of a visual representation of a binary

### Enumeration
#### Active Scanners
##### Nmap
* command line tool that allows you to map the network with various switches/options

##### Hping
* command line tool that allows you to granularly craft ICMP packets to help bypass technical controls in place that would noremally ignore/drop these requests

#### Passive Scanners
##### Responder
* remote access attack tool that poisons name servers

### Wireless Assessment Tools
#### Aircrack-ng
* open-source wireless security suite
* useful to audit WLAN security

#### Reaver
* utility that exploits WPS weaknesses
* wireless password cracking tool

#### oclHashcat (Hashcat)
* command line tool used to crack hashes

### Cloud Assessment Tools
#### ScoutSuite
* open source tool written in Python
* security auditing tool to help assess security posture in cloud environments
* outputs results in XML that can be viewed in a browser

#### [Prowler](https://github.com/toniblyx/prowler)
* AWS CIS Benchmark tool

#### [Pacu](https://rhinosecuritylabs.com/aws/pacu-open-source-aws-exploitation-framework/)
* Pentesting AWS to secure the cloud


## Section 6: Chapter 5: Threats & Vulnerabilities Asscoiated with Specialized Technology
### Mobile and IoT
#### Access Points
* any place where a device connects via WiFi, then into the network infrastructure
* common place for vulnerabilities

#### VPN (Virtual Private Network)
* allows you to establish a secure connection using an insecure access point

#### Network Vulberabilities
* mobile device has to connect to IT infrastructure
* WiFi or celluar
* older technologies were insecure
* newer technologies are more secure and  use encryption

#### Device Vulnerabilities
* securing mobile devices is challenging task because the whole idea of them is to be easily connectable
* provision for multi-use
* cannot secure one device for multiple different uses

#### OS Vulnerabilities
* os update frequently by competition between OS manufacturers
* patching bugs and security vulnerabilities

#### Application Vulnerabilities
* improper platform usage
* insecure data storage
* insecure authentication
* insecure authorization
* code quality vulnerabilities

### IoT
* smaller devices connecting to the internet and doing things autonomously
* IoT devices are ubiquitous
* users not often concerned about security
* many devices are not hardened
* default credentials listed on the internet

#### Botnet
* collection of compromised devices used to launch a DDoD atack

#### Mirai Botnet
* malware that compromised a lot of insecure IoT devices
* successful DDoS attack

### Emmbedded & Firmware Systems
#### Special-Purpose Software
* typically operating a chip
* low-power processor
* often no external storage
* software can be burned into the firmware
* could just be hardware only
* i.e. an older style thermostat in a house
* limited ability to monitor or patch

#### Real Time OS (RTOS)
* devices that require low-latency input processing
* i.e. vehicles, manufacturing, aviation, medical
* vulnerabilities allow threats to underlying performance guarantees

#### System on a Chip (SoC)
* software and hardware intergrated on a single chip
* used in special-purpose applications
* SoC is efficient and cost effective
* vulnerabilities can affect the entire SoC environment 

#### Field Programmable Gate Array (FGPA)
* combination of SoC and embedded system
* programmable chip with the ability to be modified and reprogrammed in the field
* must use special device to overwrite the firmware/ upgradable
* cost effective
* simplicity sometimes lead to vulnerabilities

### Access & Vehicles Risk
#### Physical Acccess Control
##### RFID
* Radio-frequency identification
* chip that uniquely communitcates with a receiver
* physical readers make reverse engineering and spoofing possible
* vulnerabilities can allow attackers to bypass access control
* replay and cloning are popular attack methods

### Vehicles
* vehicles of all types are increasingly connected
* internet connectivity access to many subsystems
* control of some subsystems
* this connectivity inherently opens up vulnerabilities

#### Controller Area Network (CAN bus)
* defines communication among vehicle components
* CAN exploits that alter vehicle operation have been demostrated

### Drones
* can be controlled for malicious purposes by an attacker
* can be an innocent attack in which an attacker hijacks a civilian drone to be used for a malicious purpose
* some military drones are the size of meduim duty air craft


### Automation & Control Risk
#### Building Automation Systems
* network of connected of cyber-physical devices
* combination of computing decive that has impact in the physical world
* some examples are robots, PLC's, thermostats, lighting
* vulnerabilities can impact a building's usability, inhabitability, and safety

#### Workflow & Process Automation Systems
* systems that direct or control workflow
* project/document management software, software configuration management
* value is in autonomy, vulnerabilities can adversely affect this automation
* important to audit desired workflow externally

#### Industrial Control System (ICS)
* cyber-physical systems, software to control physical behavior
* common in manufacturing and warehousing/distribution
* elevators and HVAC systems
* remote terminal unit (RTU) or PLC's
* PLCs commonly use firmware

#### Supervisory Control & Data Acquisition (SCADA)
* special class of ICS
* monitors and controls cyber-physical systems
##### Vulnerabilities
* the need to communicate with the remote facilities
* autonomous operation of remote facilities
* not modular

#### Modbus
* SCADA (PLC) communication standard
* security not part of its design by default


## Section 7: Chapter 6: Threats & Vulnerabilities Associated with Operating in the Cloud
### Cloud Models
#### Software as a Service (SaaS)
* cloud provider manages all that is needed for some software to run
* the user only manages the User Data

#### Platform as a Service (PaaS)
* cloud provider manages what is needed to run an application on the virtual server
* the user manages the User Data and the application(s) that is running on the server

#### Infrastructure as a Service (IaaS)
* cloud provider manages all the components that are typically found in a traditional bare metal server, i.e. storage, networking, hardware
* user manages the OS, databases, runtime, applications, and user data

### Cloud Deployment Models
#### Public Cloud
* most popular
* lease connectivity and functionality from service provider

#### Private Cloud
* create a collection of servers in you own data center
* only for internal network access

#### Community Cloud
* private cloud owned by a consortium
* shared among many entities

#### Hybrid Cloud
* looks like a single cloud environment but is made up both private and public models ( and in certain instances community cloud)

### Vulnerabilities
* authorization
* authentication

### Remote Service Invocation (FaaS, IaC, API)
#### Function as a Service (FaaS)
* serverless architecture
* allows you to fucos on responding to functionality request
* example AWS Lamda Functions

#### Infrastructure as a Code (IoC)
* developers tend to develop based on personal preferences
* this causes divergence in the environments which can introduce vulnerabilities
* structured method to create stable developemt environments
* minimizes local configuration differnces
* virtualization and structured provisioning
* makes it easy to create cloned environments

#### API
* poorly written APIs may have vulnerabilities
##### OWASP API Security Project Top 10
1. Broken Object Level Authorization
2. Broken User Authentication
3. Excessive Data Exposure
4. Lack of Resources and Rate Limiting
5. Broken Function Level Authorization
6. Mass Assignment
7. Security Misconfiguration
8. Injection (SQLi, HTMLi)
9. Improper Asset Management
10. Insuffuecuent Logging and Monitoring


### Cloud Vulnerabilities
#### Imporper Key Management
* encryption can protect confidentiality, integrity, non-repudiation
* security depends on the encryption key
* difficult to securely generate, distribute, and replace keys as needed

#### Unprotected Storage
* cloud storage is located on someone else's computing systems
* be sure to secure that storage
* admins must configure security settings properly
* multiple layers of security are always recommended
* common loophole is mass access which is often granted for convenience
* this may expose sensitive data

#### Logging & Monitoring
* responsibility changes based on the cloud service model
* with SaaS/PaaS there is little control to the user on what is logged
* it is essential that you ensure all important events are monitored and logged
* more services means less granular control
* SLA spells out roles and responsibilities for all parties


## Section 8: Chapter 7: Mitigating Controls for Attacks & Software Vulnerabilities
### Injection & Overflow Attacks
#### Injection Attacks
* attacker sends input so software does something unintended by developer
##### Remote Code Execution (RCE)
* tells target system to run some unauthorized function

##### XML attacks
*  allow you to send embedded bad data or invalid data that causes the XML parser to hang or crash

##### SQLi Attacks
* most common language for relational databases
* very flexible
* hard to secure
* often used along with remote code execution

##### Cross Site Scripting (XSS)
* leverage trust between a client and server
* **persistent** attack stores malicious code on a server
* **non-persistent (reflected)** is an attack in which an attacker takes advantage of a vulnerability on the server
* **Document Object Model (DOM)** attack used in XML data transfers where bad data is injected into the XML

##### Directory Traversal
* attacks that allow an attacker to move around the different directories of an application
* could possibly allow access to sensitive data or unauthorized data

### Overflow Attacks
* happens when an attacker provides more input than the developer allowed for
* input may overflow into the next memory space

#### Buffer Overflow Attack
* attacker may be able to write to unauthorized areas of memory

#### Interger Overflow Attack
* provide interger values that are too great or too small

#### Heap Overflow Attack
* can cause a program to call itself multiple times

### Best Practices for Stopping these Attacks
* carefully and aggressively parse input
* validate all input
* only process valid input
* if it is not valid input reject it, do not try to clean it up

### Authentication Attacks
#### Privilege Escalation
* attacker tries to do more than they're authorized to do
* then attempts to try to gain higher privilege
* ideally attacker tries to become admin in Windows and root in Unix/Linux

##### Methods for Privilege Escalation
* login as someone else
* brute force your way in
* exploit various vulnerabilities to allow you to escape to a higher privilege shell
* example is rooting/jailbraking a mobile device

#### Password Praying
* use a list of popular passwords across a multitude of machines so you are not detected as malicious activity

#### Credential Stuffing
* attacker obtains a list of previuosly-leaked username and passwords and tries to use them on other sites

#### Impersonation
* attacker pretends to be someone else by stealing someone's login credentials


### Exploits
#### Impersonation
* attacker pretends to be someone else by stealing someone's login credentials

#### Man-in-the-Middle Attack (MITM)
* impersonation attacks that face both the client and the server
* the attacker faces the client pretending to be the sever and the attacker faces the server pretending to be the client

#### Session Hijacking
* type of an attack where an attacker eakes advantage of valid session information
* usually while acting as a proxy and then replaying the authenticated request(s)

#### Cross-Site Scripting (XSS)
* type of attack that leverages the user's computer to execute malicious code on behalf of the attacker
#### Two Forms of XSS
##### Stored (Persistent)
* malicous code is stored on a site and gets executed when an authorized users downloads/access the site with malicious code

##### Reflective (Non-Persistent)
* attacker takes advantage of a flaw in the server software and gets the user's browser to execute the code

#### Privilege Escalation
* any techniwue that allows an attacker to do something that they normally aren't allowed to do
* can occur either vertically or horizontally


### Application Vulnerabilities: Part 1
#### Improper Error Handling
* provide enough information to correct what error has occured for the user
* keep any information about the server/software/application/network from being sent to the user
* do not send error messages and crash the program/application

#### Dereferencing
* pointer attempts to access some value in the memory that is no longer there
* following the pointer can cause an operational error
* never follow a pointer until you verify it's validity
* fail gracefully

#### Insecure Object Referencing
* make sure access controls operate at all levels
* direct record ID used to access unauthorized data
* always authenticate every request

#### Race Condition
* time difference between checking the permissions of a subject requesting a resource and allowing access to the resource
* **TOCTOU**: time-of-check to time-of-use
* never allow access after authentication but before use
* never provide acces to data without checking identity

#### Broken Authentication
* should be aggressive and proactive
* do not authenticate, assign a session ID, and assume from then on it's always the same user if it's the same session ID

#### Sensitive Data Exposure
* application's responsibility to protect the data and only allow authenticated authorized access to any data


### Application Vulnerabilities: Part 2
#### Insecure Components
* insecure parts of applications
* all applications are modular, they rely on libraries, external functions, or interactions with other components

#### Defualt Configurations
* vendors try to set them appropriately
* common to have to change the settings
* default user IDs are a vulnerability
* change default configurations to the mnost secure settings
* remove/disable unused user IDs

#### Insecure Fucntions
* example is *strcpy* from the **C Language**
* use proper software developement standards
* make sure developers understand what not to do
* provide sufficient feedback


## Section 9: Chapter 8: Security Solutions fro Infrastucture Management
### Network Architecture & Assent Management
#### Physical Connections
* wired networks, star, bus, mesh, ring
#### Software-Defined
* may have a traditional physical connections but has a logical layout
* control layer (routing)
* data layer (moving packets)
#### Virtual Private Cloud (VPC)
* private resources in a public cloud environment
* use encryption for security
#### Virtual Private Network (VPN)
* secure tunnel between two end points
* almost always encrypted
#### Serverless
* deploy software network components withour a server
* FaaS
* use other peoples' services instead of hosting your own
### IT Asset Management (ITAM)
#### Asset Lifecycle
* acquisition
* deployment
* maintenance
* retirement
* disposal
* must always have approval to move any asset(s) from one stage to another
* must always document any approved movements of asset(s)
#### Maintaining Inventory and Configuration
* asset tagging to be able to uniquely identify any asset

### Protecting Your Territory
#### Network Segmentation
* the process of breaking down large networks into smaller networks/zones
* improves network management at large
* improves traffic across the network
* prevents an attacker from moving across networks
* achievable across all OSI & TCP/IP layers
#### Physical Layer Segmentation
* seperate netowrks & devices connecto to seperate intercommecting devices
#### Link Layer Segmentation
* VLANs allow multiple devices across multiple networks to be connected to the same physical device
* great way to manage traffic
* ensures segmentation
* verify hard isolation across the network
#### Jump Server
* login enabled
* enchanced authentication protocols
* strict access rules
* no services or applications that aren't necessary will run on this server
* ensure that these are monitored and updated regularly

### Identity & Access Management (IAM)
#### Determining a User's Identity
* Identification
* Authentication
#### Process
* register as new user
* provide credentials
* authentication via PIN, token, password, biometrics, etc
#### Privilege Management
* authorization is providing resource access
* the key is authentication via **MFA**
#### Signle Sign-on (SSO)
* using a single identity across several applications or organizations
* **Security Assertion Markup Language (SAML)** is used to transport these credentials and sessions
#### Federated Identification
* using a signle identity across several organizations
* user identifies/authenticates with a central identity manager
* i.e. OpenID
### IAM Mehtods
#### Role-based Access Control (RBAC)
* users (subjects) belong to one or more roles (groups)
* object permissions are granted based on role
#### Attribute-Based Access Control (ABAC)
* users (subject) posses descriptive attributes
* object permissions are granted based on attributes
#### Mandatory-Access Cotnrol (MAC)
* subjects have clearances
* objects have classifications
### IAM Auditing
#### Manual Review
* necessary to identify malicious behavior
### Cloud Access Security Broker (CASB)
* runs between users and cloud services
#### 4 CASB Pillars
* **Visibility**: subject.object access transparency
* **Threat Protection**: detects and blocks malicious activity
* **Compliance**: controls to adhere to regulatory requirements
* **Data Security**: controls to protect sensitive data

### Encryption & Active Defense
#### Encryption
* mathematical technique to scramble text
* converts plaintext to ciphertext
* reversable (converts ciphertext into plaintext)
#### Symmetric (Private Key)
* uses a single key to encrypt and decrypt
* must find a secure way to transfer the key to entities you will need to decrypt any files/emails
#### Asymmetric (Public Key)
* uses 2 keys, a public and private key pair
* can use the private key to encrypt and anyone can decrypt with the public key
### Digital Signature
* uses encryption and hashing
* **hashing**: mathematical function that takes input and creates a unique fixed-length output
* verifies the message sender
### Certificate Management
#### Digital Certificate
* public key of a known identity
* stored by a trusted entity
#### Certificate Authority
* trusted entity that stores public keys of known indentities
##### Trust Is the Foundation
#### X.509
* IEEE certificate standard
* defines certificate contents
#### Certificate Management
* creation
* authenticating
* storage (trusted manner)
* distribution
* revocation (when it is no longer valid)
### Active Defense
* process, attitude, a culture
* avoid being a sitting target
#### Moving Target Defense (MTD)
* change attack surface frequently to confuse attackers
* honeypots/honeynets can be used to track and obsver attackers in real time
* use obfuscation and agility
* reduces value of reconnissance


## Section 10: Chapter 9: Software Assurance Best Practices
### Platforms
#### Web Application
* browser based
#### Mobile
* thin client
#### Embedded
* self-contained
#### System-on-a-chip (SoC)
* more compact than embedded
#### Firmware
* just the stable code
#### Software Architecture
* processing presentation (GUI) and business logic
* storage 
* communication
#### Common Architecture Types
##### Host-based
* referred to as a Mainframe system
* everything ran on one computer
##### Client-Based
* pushed a lot of functionality to the clients
* disk storage was left on the mainframe
#### Client/Server
* often called a thich client
* client would mainly do presentation
* server would mainly do business logic and storage
* first true distibuted architecture
#### Distributed (N-tier) Model
* fully distributed model
* multiple servers performing specific business logic functions (web server. database server, etc.)

### SOA & DevSecOps
#### Service-Oriented Architecture (SOA)
* SOA clients consume services via APIs
* usually based on a web approach with a loosely-coupled connection bewteen client and server
* persistent or non-persistent
* can be open or closed
* cloud computing makes SOA far easier to scale
* uses **SAML**
* implies seperate trust zones
#### Simple Object Access Protocol (SOAP)
* early method to invoke services
* XML over HTTP
* data in an evelope approach
* can be complex
#### Representation State Transfer (REST)
* lightweight and flexible
* preffered for clients with minimal processing capability i.e. mobile devices
* based on HTTP methods
#### Microservices
* limited scope, loosely coupled services (often REST)
### DevOps
* intergrates operations with software developments
* gives operations direct input into software functionality & quality
* developers benefit from timely, relevant perspective
#### DevSecOps
* intergrates security with DevOps
* increases the priority of security, no longer an aftethought
* easier (and cheaper) to design security into software by not needing to add it later on

### Secure Software Development
### Coding Requirements
#### Functional Requirements
* inputs, processes, & outputs
#### Non-Functional Requirements
* character input, input constraints, & system limitations
#### Security Requirements
* class includes fucntional and non-functional aspects
### Development Phase
#### Design
##### Static Analysis
* review before the code has been executed
* analyzed using automated tools
##### Code Review
* manual inspection by human developers and security staff
### Implementation Stage
#### Testing Types
##### Functional 
* software performs as expected
##### Non-functional
* quality test of infrastructure
* deep dive into the mechanics of the application and infrastructure
##### User Acceptance
* software acts as user expects
### Testing for Security Professional
#### Fuzzing
* give software various input
* define crahes & exceptions
#### Stress
* push limits of software
* give input the software is expecting
#### Regression
* test security through updates & patches
### Operations & Maintainance Phase
#### Maintainance Responsibility
* outline software security requirements for developers & implementers
* pathces, how often, under what conditions, who is responsible
#### Maintainance Phase Length
* all software eventually gets retired
* define EOF
### Waterfall Model
* flows idea to final product of the software
* might only be suitable for certain tasks
### Agile Model
* use quick sprints in succession to get the product out
* can repeat this sprints as much as needed to ensure that the product is exactly how you want it

### Coding Best Practices
#### [CERT](https:securecoding.cert.org/)

#### OWASP Secure Coding Practices


## Section 11: Chapter 10: Hardware Assurance Best Practices
### Trusted Hardware
#### Trusted Platform Module (TPM)
* SoC
* stores cryptographic keys and the functionality to deal with them
##### Endorement Key (EK)
* stored in persistent memory that cannot be changed which identifies that specific motherboard
##### Storage Root Key (SRK)
* a master wrapping key used to wrap the other keys that are store on the TPM
##### Versatile Memory 
* platform configuration registers (PCR)
* Attestation Identity Keys (AIK)
* general storage keys
#### Hardware Security Module (HSM)
* secure stoage area that is not bound to a motherboard
* removable card/device
#### eFuse
* **nonvolatile bit**: once set to 1, cannot be changed
* useful to permanently disable functionality
* manufacturing tests
* useful to permantently store data, i.e. cryptographic keys
#### Firmware
* software that is burned into hardware (chip)
* difficult to change
##### Unified Extensible Firmware Interface (UEFI)
* Security Phase (SEC)
* Pre-EFI Initialization (PEI)
* Driver Execution Environment (DXE)
* Boot Device Select (BDS)
* Transient System Load (TSL)
* Runtime (RT)
#### Firemware Security
* measured boot and attestation
* calculate and securely sends hashes of known good programs to a management station
* use this method instead of verifying digital signitures of code
* trusted firmware updates
* built-in capability to download, verify, and swap firmware images
* avoids overwrite failures that result in unbootable devices

### Hardware Encryption
#### Full-Disk Encryption
* software or hardware
##### Self-Encrypting Drive (SED)
* user provides password
* password gets used to encrypt key
* encrypted key is stored in nonvolitile memory of the disk controller
##### Bus Encryption
* SED still exposes plaintext once data get read from disk
* moving crypto module from the disk controller to the CPU keeps data on the bus as ciphertext
* this requires a dedicated cryptoprocessor
* great for very high security solutions but not cost effective for general purposes

### Hardware Security
#### Trusted Execution Environment (TEE)
* rigorous assessment prior to certification
* **secure enclave**: runtime environment that limits how programs interact with one another and the outside world

### Secure Processing
#### Atomic Execution
* anti-interruption guarantee
* helps to protect from **TOCTOU** attacks

### Trusted Foundry
#### US Dod Program
* ensures that the supply chain for all DoD mission-critical systems is hardened
* fewer than 100 companies have passed the rigorous certification process to be designated as trusted foundaries

### Anti-Tamper Techniques
#### Chip Attacks
* **micoprobing**: apply voltage to various conductors and recording the results
* **visual analysis**: carefully removing the chip's covering, layer by layer
* chip manufacturers enmploy random signlas to confuse mircoprobing
* chip casing compromise detection will place zeros in nonvolatile memory

## Section 12: Chapter 11: Data Analysis in Security Monitoring Activities
### Data Analytics
#### Trend Analysis
* baseline is required
* looking for devations from baselines (spikes and valleies in graphs)
#### Historical Analysis
* past behavior used to gain perspective

### Syslog
#### Value
* **Level 7**: debug level messages that contain information normally of use when debugging a program
* **Level 6**: Informational messages
* **Level 5**: normal but significant conditions, may require sepcail handling
* **Level 4**: warning conditions 
* **Level 3**: error conditions
* **Level 2**: critical conditions such as hard device errors
* **Level 1**: alert, action must be taken immediately
* **Level 0**: emergency condition, system is unusable (panic condition)
#### Syslogd Service
* daemon in Linux
* collect & records messages from the machine
* can be found in embedded systems such as router, switches, access points, and firewalls
* can point to a central server for aggreation and analysis

### Endpoint Security
#### Malware
* record it through fingerprinting/hashing so that it can be caught if seen again
* decompose (reverse engineering) the payload to understand how it operates
* protecting against it by detecting and blocking
* not all malware is an executable, fileless malware
* these are loaded into memeory i.e. rootkits
* test via sandbox
#### User and Entity Behavior Analystics (UEBA)
* create a baseline of normal behavior (known good behavior)
* make anomalous/abnormal behavior easier to detect

### Recon Results 1
#### Point-in-Time Analysis
* best for single events
#### Tools
* packet capture
* protocol analysis
* network analysis
#### Wireshark
* connection-oriented
* cross-platform
* TCP/IP packet sniffer
* captures & analyzes packets
* reconstructs network traffic
#### Netflow
* developed by Cisco
* tack source & destination events
* groups packets into "flows"
* can also use **ntop**

#### Correlation Analysis
* larger volumes of data
* looks at trends across a network

#### Security Inforation Event Management (SEIM)
* collects telemetry from all network nodes into a single point for analysis

### Recon Results 2
#### Heuristic Analysis
* uses experience over fixed models
* imperfect craft
* conastantly evolving field
* best for malware detection

### Impact Analysis
#### Pre-Emptive
* estimate possible impact of ant future successful attack
#### Post-mortem
* determines immediate and ongoing impact of a threat that has already been realized
#### Immediate (localized) Impact
* a server(s) that has been taken down
#### Long-Term Impact
* how long will this sustain a negative affect on systems and business plan
#### Availability Analysis
* tends to have immediate impact
* secure systems guarantee confidentiality, integrity, and availability
* use resource monitoring tools to analyze to identify an early indicator of attack

### Collective Tools
#### SIEM
* collect, store, analyze & report data
* attempt to normalize data from various logs & compare
* Ex. ArcSight, QRadar, Splunk, Alienvault, OSSIM, Kiwi Syslog, ELK
#### Nmap
##### Finger printing a host
```bash
nmap -O [host address]
```

### Query Writing
#### SQL (Structure Query Language)
* most common
* Splunk uses SPL
#### Simple Queries
##### grep
* stand for get regular expression
* search text files, fetch data, pipe out data however you want
* can use in scripts to help eleviate tedious repetative typing

### E-mail Analysis Part 1
#### Malicious Payload
* an executable that does something bad
* malware often embedded in attachments, i.e. XML files
* trick user to open the e-mail attachment
#### DomainKeys Identified Mail (DKIM)
* helps to detect spoofing
* messages include a digital signature of the sender
#### Sender Policy Framework (SPF)
* rotection against spoofing
* sender's IP address is checked against DNS-authorized IPs
#### Domain-based Message Authentication, Reporting, and Conformance (MARC)
* e-mail authentication protocol to help combat spoofing
* uses (and extends) DKIM and SPF to verify message authenticity and specifies an action of authentication fails

### E-mail Analysis Part 2
#### Phishing
* human is always the weakest link
* combination of techincal and nontechnical (**social engineering**) attack
* properly train personnel
* e-mail is a popular attack vector
#### Forwarding
* if users recognize a potential scam, they should forward to a dedicated security e-mail account
* analysis of these forwarded e-mails helps define e-mail policy and training
#### Digital Signatures & Encryption
* used to verify message integrity and enforce message confindentiality
* sender ecrypts message with their private key
* recipinet can look up sender's public key to decrypt and verify signature
* used to gaurantee confidentiality of the message
* sender encrypts message
* recipient decrypts message if they have the key
* keys must be securely transmitted
#### E-mail Authentication
##### Secure/Multipurpose Internet Mail Extension (S/MIME)
##### Pretty Good Privacy (PGP)

#### Embedded Links
* never follow a link that doesn't come from a trusted source
* expand shortened links to see what the actual URL is
* used to mislead users

#### E-mail Signature Block
* different than digital signature
* place at the end of the e-mail message to put your contact information

## Section 13: Chapter 12: Implement Configuration Changes to Existing Controls to Improve Security
### Permissions
#### Identify:
* Users
* Groups
#### Set Permissions for:
* Files
* Resources

#### Blacklisting
* deny specific traffic or applications
#### Whitelisting
* can use Windows GPE
* disable everything except those explicitly listed

### Firewalls
* OS come with firewall built in
* includes default rules
* simple firewalls look at protocol, port, source, destination
* uses this information to decide if a rule exist to allow/deny the traffic
* define higher level rules and then the exception comes after that
* rules are enforced in the order they are listed in the firewall table

#### Web Proxies
* sit between web servers and web clients
#### Web Application Firewalls
* used for web traffic
* can make decisions based on the context of the data in the packets

### Intrusion Prevention Rules
#### IPS/IDS
* like a firewall that takes an action against threats
* filters traffic, compares to rules, then acts
* i.e. **Snort**

#### Snort Rule Building
##### Syntax
* Snort action
* Protocol
* Source IP address
* Source Port
* Direction
* Example: **alert tcp any any -> any 80 (msg:"A web connection was made!";flow;stateless;rev;1;)**

#### Zeek Logs
* logs events based on rules
* run scripts to anayze events
* looks for anomalies and correlates data

#### Suricata
* free, open-source threat detection engnie
* IDS, IPS, and network monitoring tool

### DLP & Endpoint Detection
* similar to IDS
* inspects traffic of data movement
* goal is to limit unauthorized data transfers
* some SaaS solutions provider DLP options

#### Endpoint Detection & Response (EDR)
* part of a full-scale security solution
* endpoint is any device that is connected to a network to utilize a resource(s)
* endpoint compromise can lead to internal compromise
* structured extension to traditional malware detection
##### Primary Capabilities
* Monitor
* Detect
* Repsond
* main difference from standard antimalware approach


## Section 14: Chapter 13: The Importance of Proactive Threat Hunting
### Threat Hunting and the Hypothesis
* proactively searching environment for threats

### Threat Hunting Process
* Define the purpose of the hunt
* Where will it be conducted? (internal/external/both)
* What resources do I need to conduct the hunt?
* Who are the key stakeholders?
* What is the desired outcome of the hunt?

#### Threat Hunting Process Cycle
##### Generate Hypothesis
* statment of expectation based on information
* analytics-driven 
* situational-driven 
* intelligence-driven 
* experience-driven that is based on familiarity with your environment
##### Investigate via Tools
##### Discover Patterns
##### Inform Operations
* and the cycle repeats as many times as needed
* **MITRE ATT&CK Framework** is a good resource to model when threat hunting

### Results & Benefits
#### Delivering Results
* document the entire process
* used to reduce the attack surface area
* bundle critical assets
* explore various attack vectors
* use integrated intelligence

#### Improving Detection Capabilities
* how do you convince stakeholders and finacial departments
* update firewall and IDP/IPS rules
* updated alert logic for SIEM platforms
* updated alert logic for EDR platforms
* improvements to sensor placement across the network
* improvements to asset visibility
* help motivate changes in your organization's develeopment process
* help motivate changes to security training across the organization
* help motivate changes to quality assurance and quality control process

## Section 15: Chapter 14: Compare and Contrast Automation Concepts and Techniques
### Workflow and Scripting
#### Security Orchestration Automation and Response (SOAR) Platforms
* automate common tasks
* standardize incident reponse
* organize flow to help catch mistakes and repeat processes easily
* i.e. Splunk Phantom

#### Data Enrichment
* transforms raw data into actionable information
* enrichment leads to additional insights
* process is to correlate known data with additional details

#### Scripting
* automate the repetitive stuff
* great for standardizing any mundane tasks
* **Python/Violent Python** **PowerShell**

### API & Malware Signature Creation
* API gives the ability to reach out and consume services created by others
#### REST
* is the most common method using web request
* entire architecture is client/server
* stateless
* cacheable
* uniform interface
* layered system
* code on demand
* embed in any language
* call from cli using **curl** command
```bash
curl --request GET\ --url https://www.virustotal.com/api/v3/domains/[DOMAIN]\ --header 'x-apikey:<your api key>'
```

### Automated Malware Signature Creation
* useful to keep up with rapidly changing malware threat
#### [YARA](https://virustotal.github.io/yara/)
* identify and classify malware samples

### Threat Feeds & Machine Learning
* aggregrating disparate data streams is always difficult
* threat feeds may provide data in different formats
* scripting can help automate transforming data into a single format

### Machine Learning
* field of computer science
* collection algorithms that examine extremely large datasets to reveal trends and indicators that can predict future behavior
* alogrithms learns by using historical data to make predictions
* useful in security analysis
* based on the natural tendency to stabilize
#### Similar Fields
##### Machine Learning
* looking for trends
##### Data Mining
* looking at large data sets to extract previosly unidentified valuable data
##### Data Science
#### Two Types of Machine Learning
##### Supervised
* grouping techniques by defining groups to store and analyze data
* let the machine learning set baseline activities for the defined groups
##### Unsupervised
* a cluster approach that will aggregrate all traffic and group like patterns together
* Ex. neural networks, decision trees, SVM, regression, etc.

### Protocols, Standarads, & Software Engineering
#### Security Content Automation Protocol (SCAP)
* great place to start to automate cybersecurity analysis tasks
* defines languages
* reporting formats
* identification schemes
* measurement & scoring systems
* integrity
* [**OpenSCAP**](https://open-scap.org)

#### Software Engineering
* continuous integration allows for new code to be automatically integrated into a quality assurance environment
* continuous delivery allows for new code to be automatically integrated into a development/test environment
* continuous deployment allows for new code to be automatically integrated into a production evnironment


### Section 16: Chapter 15: The Importance of the Incident Response Process
#### IR Roles & Responsibilities
#### Team Composition
* depends on the nature of the incident itself
* bring the right knowledge & experience to meet the problem
* outside resources will need coordination, communication, & pre-set parameters
#### Escalated IR
* involve law enforcement
* may be subject to penalties or legal ramifications
#### Key Roles
##### Senior Leaders
* include in decision-making process
* visibility & support
* address regulatory issues
* buffer between IR team & personnel/leaders
#### IR Team
##### HR
* disciplinary measures
* overtime/hours
* involve early & often
##### Legal
* regulatory requirements
##### Marketing
* manage communication
* inform about progress
##### Customers
* problem resolution
* return business is important
##### Business Collaborators/Shareholders/Investors
* impact to the bottom line
* assure them that issues will be resolved in a timely secure manner

#### Team Structure
##### Central Reponse Team
* organic
* address incidents as they come up
##### Distributed Response Team
* larger organizations
* geographically separate teams that address incidents
##### Outsourced Response Team
* outside of the organization
* repsonds to incidents as a service

#### Commincations Process
##### Circle of trust
* key staff, internal, & external partners
##### Disclosure
* based on regulatory or legislative requirements
* need-to-know
##### Damage Control
* let employees know about incident
* policy of talking about the icident
##### Secure Communications
* avoid leaks

### IR Active Preparation
#### Active Security Measures
* know your attack surface
* identify key parts of systems to test for vulnerabilities
* help security team prepare for attacks & protect assets
* help developers make products better
#### Attack Surface Analysis
* conducted by security architects & pen testers
* helps to identify parts of a system to review & test for vulnerabilities
* helps to identify high risk areas that need to be defended
* helps to identify when you have changed the attack surface
#### Indicators of Compromise (IOC)
* unusual outbound traffic
* anomalous admin account activity
* geographic irregularities
* login irregularities
* high database read volume
* HTML response size
* high requests on the same file
* mismatched port application traffic
* suspicious regisrty & system file changes
* DNS request anomalies
#### Determing Severity
##### Scope of Impact
* downtime, what is the maximum tolerable downtime?
* recovery time, time is money
* data integrity, tampering/deleting data
* economic, value & cost
* business process criticality
#### Types of Data
##### PHI
##### PII
##### Corporate secrets & intellectual property
* patents 
* trademarks & copyrights
* mergers & acquisitions
* accounting
* trade secrets
##### PCI
#### Know Your Threat
* know vulnerabilities
* what type of data?
* what do systems look like?
* what are the threat actors that are likely to attack?

### Section 17: Chapter 16: Appropriate Incident Response Procedures
#### Incident Response Process
#### NIST Special Publication 800-61
* National Institute of Standards and Technology
* provides publications & guideline on technology standards

##### Phase 1: Preparation
* proactive measures i.e. network segementation & host hardening
* formal risk assessment process that includes
  - Vulberabilities
  - Action Steps
  - Communications
  - Activity & Reporting
##### Phase 2: Containment
* quartining hosts
* stop all damage
* prevent or reduce spread of infection
##### Phase 3: Eradication
* return to known good state
* **Document Carefully**
##### Phase 4: Validation
* identify threat & attack vector
* identify prevative measures
  - change controls
  - update software/patches
##### Phase 5: Corrective Actions
* Implement Patches
* Update PPPs
* Organizational Policies & Procedures
  - Network Systems Access
  - Authentication
##### Phase 6: Reporting
* Take thorough notes throughout
* compare with best practices 
* look for ways to improve
* report to senior management

#### IR Process Elements
##### Communication
* important throughout IR process
* get everyone invovled in the process espescially senior management
##### Analysis
* technical techniques
##### Reporting
* documentation is critical


### Section 18: Chapter 17: Analyze Potential IOCs
#### Network Symptoms
* unusual traffic
* unusual bandwidth changes
* unusual connections
* Beaconing
* Peer-to-peer Communications
* rouge devices
* scan sweeps
#### Host Symptoms
* connections
* processes & applications
* memory consumption
* disk consumption
* processor consumption
* unathorized application or processes
* unauthorized privilege escalation
* data exfiltration
#### Application Symptoms
* what are processes doing?
* unauthorized system usage
* anomalous activity
* unexpected error messages
* out of memory alerts
* unexpected outbound transmissions


### Section 19: Chapter 18: Utilize Basic Digital Forensics Techniques
#### Digital Forensics
* Network Forensics
* Mobile Fornesics
* Computer Fornesics
* Code Analysis
#### Principles of Forensics
##### Do No Harm
* don't affect data integrity
##### Train
* forensics examiners & professionals
* requirements & regulations
* provide evidence on why they did what they did
##### Keep Good Notes
* collection, inspection, storage of evidence
* audit trail for 3rd party inspection

#### Phases of a Forensics Investigation
##### Seizure
* ensure data isn't tampered with
##### Aquisitions
* extracting data from the scene
* work from forensic image
##### Analysis
* make sense of the data
##### Reporting
* prepare all our findings in a way that can be presented to any audience 
* important to know your audience

#### Preparing Forensics Jump Bag
* laptop with lots of RAM
* lots of storage (HDD,SSD)
* USB Hub
* lots of cables and adapters
* hard drive enclosure
* Toolkit
* Camera
* Wireless Spectrum Analyzer
* crime scene tape & seals
* Documentation
  - IR plan & log
  - chain of custody forms
  - contact list

#### Seizure & Acquisitions
##### Control Access
* create access list
* who, where, when
##### Trained & Certified Personnel
##### Document
* visitors
* access to systems
* contamination
##### Maintain Chain-of-Custody
##### Leave the Power on
* unless malware is destroying evidence
* running memory can give clues
* advanced malware might not write to disk
#### Acuisition Process
##### Prepare the Destination Media
* securely store data
* removable hard drive or network-based option
* make sure destination media is clean
##### Prevent Changes
* forensic station
  - special set-ups
  - allows you to securely copy from source to destination
  - often have write blockers
  - mouse jiggler prevents workstation from going into sleep
##### Hash the source
* fixed snapshot of evidence
##### Image the Source
* open source options like **dd**
```bash
dd if=/dev/sda of=/dev/sdb bs=64K conv=noerror,sync status=progress
```
* **if**: input file full path
* **of**: output file full path
* **bs**: block size, default is 512bytes
* **conv**:
  - **noerror**: will continue its operations even if read errors are encountered
  - **sync**: will fill any read errors with 0's to keep the data offset the same in the destination file as was in the input file
* **status=progress**: will be show a status of the process to the terminal
##### Verify the Acquisition
* hash the copy to verify that the data wasn't modified in any way during the imaging phase
##### Protect the Acquisition

#### Forensics Acquisition Tools
##### SHA-1
* industry standard that is used for generating hashes for digital signatures and file integrity verification
* **-a** option allows you to change the bits used, default is 1, 224,256, 512, 512224, 512256
* used to protect finacial transactions and provide verification of software downloads
#### Password Cracking
##### Hashcat
* over 200 hash types
* oclhascat - GPU acceleration
##### Commercial Options
* ElcomSoft
* Passware
  - Passware Kit Forensic
  - can operate individually or with EnCase suite
  - GPU acceleration

#### Mobile, Virtualization, & Cloud
##### Mobile Device Forensics
* can be difficult because
  - OS is closed
  - was meant to communicate easily with outside world
* remote access can alter evidence
* faraday device
* typically will need special mobile forensics software & hardware
##### Virtualization & Cloud Forensics
* SLAs may limit forensic activities
* snapshots are very useful
  - forensically-sound evidence preservation

##### Legal Hold
* is required by the court to retain evidence
* in a court of law, admissible evidence must be in original state
* verified images can suffice as forensically-sound

#### Forensics Analysis, Part1
#### Windows Clue Locations
* Event Viewer
* Regedit
* Desktop
* User Folders
* Documents Folder
* Network Shortcuts
* Recently opened files & folders
* System temp folders
* Browser temp folders
* System Folders (malware)
* Auto run
##### Registry Are (Windows ONly)
* OS version (Software)
* las failed logon (SAM)
* Username & SID (SAM)
*  Shutdown (System)
*  Timezone (System)
*  drives mounted by user (Ntuser.dat)
*  files ext associations (Ntuser.dat)
*  installed application list (Software)
*  search history (Software)
##### System Artifacts
* backups (RP, VSC, others)
* jump litsts
* misc. logs (Firewall, AV, Apps, etc)
* removable media connections
* prefetch
* pagefile
##### Internet
* parse internet history files (index.dat, SQLite, etc.)
* check temp folders
* parse cookies
* cached pages
* form history/auto comlete files
* favorites/bookmarks
* toolbars
* browser plug-ins
* carve unallocated areas for deleted history artifacts
#### Forensics Analysis, Part2
#### Linux Clue Areas
* /etc/ contains config files for most applications/packages
* /var/log/ contains log files of most applications
```bash
uname -a
```
* this command will give information about the current system
* the order is as follows
  - kernel name
  - node name
  - kernel release
  - kernel version
  - machine name
  - operating system
```bash
ps -aux
```
* this command will list all running processes on the system
```bash
top
```
* this command will give a real time list of running processes
##### /etc/password
* this file contains basic user information
* a UID/GID of **0** indicates admin/root privileges
##### /etc/shadow
* this file contains user password information
* this passwords are stored an encrypted and hashed values
##### last Command
* will show the login history of the currently logged in user
##### /var/log/auth.log
* shows all authentication for the current system/box
#### Time Line Analysis
* search log files, artifacts to create a single correlated timeline
* easily analyzed by investigators
#### Plaso
* utility used to create "super timelines"
* exact time of incident is unknown so you look to get as much data before and after incident was noticed
##### Targeted Timeline
* time of incident is known
* can take snippets of pre & post incident to see how the incident affected the system
#### Packet Capture
#### Wired Tools
#### tshark (onion)
* a command line tool
* works very similar to tcpdump

#### WireShark
* GUI option to tshark

#### Wireless Tools
#### airmon-ng
* this utility will show the various interfaces available
* will need to have a wireless card that supports monitor mode
```bash
airmon-ng start wlan0
```
* this command will place an interface in monitor mode
#### airodump-ng
* this command will show any SSIDs in range of the wireless card
* command will shows BSSID, power, and data about channels and speed
* important to capture 4 way handshake with wireless connctions in order to capture the hash of the password
```bash
airodump-ng -c 6 --bssid [TARGET BSSID] -w target wlan0mon
```
* **-c**: specifies channel
* **-w**: writes output to a capture file
#### aircrack-ng
```bash
aircrack-ng -w somanywords.txt target.01.cap
```
* **-w**: specifies a wordlist to be used


### Section 20: Chapter 19: The Importance of Data Privacy & Protection
#### Data Privacy & Security
##### Privacy vs Security
* Privacy is about the individual
* security is about the data
##### Privacy vs Confidentiality
* confidentiality is enusuring no unauthorized individuals can access specific data
* privacy is about keeping an individual's identity secure
* data security is protected through controls
* privacy has to do with data usage
#### Data of Interest
* personal (PII)
* personal health (HIPAA)
* financial
* copyrighted

#### Nontechnical Controls
##### Data Ownership
* is the notion of who has responsibility of data
* most likely a management function
##### Data Classification
* the ability to discern sensitive data from non-sensitive data
* most organizations have data classificatio scheme, but the policy is most important
##### Data Confidentiality
* is the notion of what data should be shared with other parties
* how the data should and can be used
* NDA
##### Data Sovereignty
* Principle behind the GDPR
* organization that at the point data was collected or data was rendered has ownership of that data
##### Data Minimization
* another core principle of the GDPR
* regulation/requirement to collect the minimum amount of data needed to satisfy a service
* keeps any organization from collecting more than is needed PII on their customers/users
##### Data Purpose Limitation
* limits how you can actually use data (GDPR)
* must communicate with the data owner on how you plan to use the collected data and that you will not use it in any other way than specified
#### Data Retention
* what data you keep
* how long the data is kept
* where the data is stored
* how the data is deleted
* GDPR states that any individual that has given data has the right to ask that that data be removed from any and all records the data storage entity has of them
##### Taxonomy 
* is how data is stored & organized for future recall
##### Normalization
* makes it possible to relate data & extract meaningful reports
##### Indexing
* way of organizing data for searchability & rapid recall

### Technical Controls
#### Access Controls
* limit access to certain resources
* identification, authentication, authorization
#### Encyption
* protects confidentiality
#### Sharing Data While Preserving Privacy
* data masking
* deidentification
* tokenization
#### Digital Rights Management (DRM)
* watermarking
* geopraphic access requirements (geoblocking)
#### Data Loss Prevention (DLP)
##### Process
1. create data inventories
2. monitor data flows
3. Implement, test, tune
##### DLP Solution Placement
* Network DLP (NDLP)
* Endpoint DLP
* Hybrid DLP, combination of NDLP and EDLP


## Section 21: Chapter 20: Security Concepts in Support of Organizational Risk Mitigation
### Business Impact Analysis
* study of what is important to a business & what critical functions must be sustained
* calculate the maximum tolerable downtime & distruption for activities
* operational disruption & productivity
* financial considerations
* regulatory responsibilities
* reputation
#### BIA Steps
1. Select individuals to interview for data gathering
* people from all levels 
2. Create data-gathering techiques
* surveys, questionaires, & qualitative & quantitative approaches 
3. Identify the company's critical business functions
4. Identify the resources these functions depend on
5. Calculate how long critical functions can survive without these resources
6. Identify vulnerabilities & threats to critical business functions
7. calculate the risk for each critical business function
8. document findings, report them to managemenr, make recommendations

### Risk Identification
#### Main Goals
* identifying vulnerabilities
* determine probability that a threat will exploit a vulnerability
* determine potential business impact of each threat
* provide an economic balance between impact of the threat & cost of the countermeasure
* evaluate cyber threat intelligence
* conduct vulnerability assessment
* observe cybersecurity operations
* organize brainstorming session
#### Ask the right questions
* what event could occur?
* what could be the potential impact?
* how likely is it to happen?
* what level of confidence do we have in the answers to three first thre questions?
#### Risk Register
* unique identifier
* short name
* description
* owner
* probability
* magnitude
* risk value/rating
* 
### Risk Calculation & Communication
* can use either or combination of qualitative and quantitative assessments
#### Delphi Technique
* is a technique to perform an assessment wihtout intimidation becoming a factor in the decisions made
* each person anonymously lists risks
* each person anonymously comments on the list of risks
#### Communication of Risk Factors
* presentation to multiple audiences
* must be tailored for each audience

### Training
* technical training
* real life experience
* active member of the community
* tabletop exercises (TTXs)
* live-fire exercises i.e. cyber range
* separate training teams
### Supply Chain Assessment
#### Vendor Due Dilligence
* review references & communication with former & existing customers
* review BBB reports
* ensure that contracts/agreements include requirements for adequate security controls
* ensure that SLAs are in place
* review vendor's security program
* review internal & external reports & third-party review
* conduct onsite inspection & interview after signing the agreement
* ensure the vendor has a business continuity plan
* implement a NDA
#### Supply Chain Risk Assessment
* hardware source authenticity, Trusted Foundry (DoD)


## Section 22: Chapter 21: The Imprtance of Frameworks, Policies, Procedures, & Controls
### Frameworks
#### NIST SP 800-53
* recommend security controls for federal information systems
* controls to be compliant with Federal Information Processing Standards (FIPS)
* FIPS is used in government or military data processing
#### FIPS Controls
* can be found in the Security Control Catalog (NIST 800-53, Appendix F)
* controls are management, operational, techincal safeguards
* countermeausres to protect **CIA**
#### Cybersecurity Framework (CSF)
#### Goals
* flexible
* scalable
* repeatable
* cost-effective
* prioritize
#### Key Parts
##### Framework Core
* common activities, outcome, & references
* 5 functions, 22 categories, 98 subcategories
##### Implementation Tiers
* catergorize rigor & sophistication of cyber security practices
##### Tiers
1. Partial
2. Risk Informed
3. Repeatable
4. Adaptive
##### Framework Profile
* state of an organization concerning CSF categories
* see where they are vs. where they can be

#### Standardize Security Standards
##### International Organization for Standardization (ISO)
* largest developer of international standards
* standards range from scientific, food technology, argiculture, space engineering, mining, etc.
##### International Electrotechnical Commission (IEC)
* standards for any electrical & electronic technologies
##### ISO & IEC create global Information Security Management System (ISMS) standards
* ISO/IEC 27000-series
* responsible for security implementation across netwrok
* ISO 27001 certification available but not required
* certification helps assure customer/users that you are adhering to industry standards
#### Control Objectives for Information & Related Technology (COBIT)
* framework & control objectives
* developed by ISACA in collaberation with IT Governacne Institute (ITGI)
* defines control goals for IT & IS system management
* framework allows focus on enterprise goals by aligning IT and IS with the business
* define common language
* helps work within regulatory requirements by intergrating IT governance
* highlights organizational pain points
##### Domains
1. Plan & Organize
2. Acquire & Implement
3. Deliver & Support
4. Monitor & Evaluate

#### Shwerwood Applied Business Security Architecture (SABS)
##### Lifecycle
1. Strategic
2. Conceptual
3. Design
4. Implementation
5. Metric
6. Auditing

#### The Open Group Architecture Framework (TOGAF)
* provides an approach to designing, implementing, and governing an enterprise system
##### Architecture Development Method (ADM)
* interative & cyclic process
* keeps focus on requirements
* allows technology architecture to understand enteprise from four different views
  - Business Architecture
  - Data Architecture
  - Application Architecture
  - Technology Architecture

#### Information Technology Infrastructure Library (ITIL)
* was created as a way to standardize information technology practice across an organization
##### 5 Core Elements
1. ITIL Service Stategy
2. ITIL Service Design
3. ITIL Service Transition
4. ITIL Service Operation
5. ITIL Continual Process Improvement

### Policies & Procedures
* ethics & code of conduct
* Acceptable Use Policy (AUP)
* Password Policy
* Data Ownership
* Data Retention
* Work Product Retention

### Controls & Procedures
#### Administrative
* implemented by management via policies or procedures
#### Logical/Technical
* software/hardware tools to restrict network or system access
* goal is to maintain resources' CIA
### Physical
* used to deter or delay an attacker
### Comtrol Types
#### Preventative
* aims to prevent an incident from happening
#### Detective
* hopes to be able to detect suspicious activity on the network
#### Corrective
* correct an identified vulnerability
### Selection Criteria
#### Driven by risk assessment
* looks to up hold the CIA triad
* based on the organization's risk appetite
### Procedure Overview
#### Continuous Monitoring
* all about gaining awareness of information security, vulnerability, threats, network trends
* purpose is to inform organizational risk decisions
#### Evidence Production
* legal request for documents
* EDRM (Electronic Discovery Reference Model)
#### Patching
* identify & fix vulnerabilities
* Task:
  - Identification
  - Testing
  - Application
  - Validation
  - Documentation
#### Compensating Control Development
* alternative control to substitute for control that's too costly
#### Control Testing Procedure
* ensures the control won't break the system
#### Exception Management
* how to decide on compensating or technical controls
* who granted the exception? Trace back for audit
* describe the process for determining this exception
#### Remediation Plans
* Plan B if all the above fails

### Verification
#### Audits
* systematic inspection of a system's complaince to a policy
##### External Audit
* conducted by independent 3rd party
* guided by regulatory compliance requirements
##### Internal Audit
* internal auditors should also be guided by regulatory compliance requirements
#### Assessments & Evaluations
##### Vulnerability Assessments
* gather exhuastive info on vulnerabilities
* open vulnerabilities
* remediated vulnerabilities
* vulnerability trends on the network
##### Penetration Test
* test to acheive a specific goal
##### Red Team Assessment
* Pen testing is discreet
* is ongoing
* actively probinf & testing to reveal vulnerabilities 
##### Risk Assessment
* acceptable risk level
* determine how to can bring the risk level down
##### Threat Modeling
* determine attacker trends
* make security changes accordingly
* accurately informs about threats & how to place countermeasures
##### Tabletop Exercises
* get senior & technical leaders involved
* everyone knows their role in an emergency
#### Maturity Models
* way to get a sense of how selfaware am organization is with regard to their security posture 
#### Certification
* technical assessment of a component to assre it's ready for a system
* checked against internal standard or outside regulatory requirement
#### Accreditation
* managerial assessment & acceptance of a component
* verifies against business model
