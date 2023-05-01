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

#### Blacklistin
* deny specific traffic or applications
#### Whitelist
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
* 
































