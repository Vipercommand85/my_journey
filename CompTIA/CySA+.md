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





























