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


 






























