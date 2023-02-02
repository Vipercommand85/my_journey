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
 - who is sponsoring the pen test
 - what is the purpose of the test
 - **PCI DSS** : Payment Industry Data Security Standard
* these govern the pen tester's activites
* test scope
 - technical/physical/personnel
* internal/external communication
 - inherent risks with these tests
 - crashing devices, services, whole servers
 - corrupting data
 - degrading perfomance/avialibility of services resulting in Terms of Service (TOS)/regulation/legislation violation
* know who to contact on a per issue basis in a timely manner

### Regulatory Compliance
[**PCI DSS**](https://www.pcisecuritystandards.org/documents/Penetration-Testing-Guidance-v1_1.pdf)
: industry standard of security requirements for payment card processing

**PCI DSS requirement 11**
: intermnal and external testing that is carried out by the following triggers
* annually
* after significant infrastructure changes

**General Data Protection Regulation(GDPR)**
* European Union (EU) regulation
* data protection and privacy for all individuals in the EU
 - companies/organizations that have personnel established in the EU will need to comply with this standard
 - gives control to individuals over their personal data
 - **Article 21(1)** requires " a process for regularly testing, assessing and evaluation the effectiveness of technical and organisational measures for ensuring the security of the processing"

### Resources and Budget
* what does each party provide?
* at what point does the engagement begin?
* protect confidentiality of findings
 - exploitable entry point is confidential information
* does the client know of the engagement taking place
* every task in the test should have a value
 - if more tests need to be added, a cost should be associated with the additional test(s)

### Impact and Constraints
* set expectations on the onset of the engagement
* Impact
 - results of testing
 - report vulnerabilities
 - remediation, how should the client respond to findings
* Disclaimers:
 - Point-in-time assessment
 - comprehensiveness ie, enterprise/organisation/department
* Technical Contraints
 - limitations that reduce scope
 - production components
 - out-of-service devices
 - can't access
  * physical/geograhical access limitiations
  * legal/regulatory/out of scope

### Support Resources
**Black Hat Hacker**: no inside knowledge of systems and topology
**White Hat Hacker**: opposite of black hat
**Grey Hat Hacker**: some information woll be available but not as much as a white hat

* **Web Services/Application Description Language (WSDL/WSADL)**
 - XML file with lots of info about web service/application and it's interface requirements
 - can be publically available
 - can be used to leverage vulnerablities

* **SOAP Project File (Simple Object Access Protocol)** 
- not exposed to public
- used by developers in development environment
- used to exchange info for web services
- provides low level web service interface details (input/output/server info)

* **SDK Documentation (Software Development Kit)**
 - help provide info on tools used to develope software
 - can provide what libraries were used in the cration of the application/service

* **Swagger Documentation**
 - popular open-source framework for developing REST (API) services
 - is a light weight API (Application Programming Interface)
 - can provide internal info on REST services exposed to clients

* **XSD (XNL Schema DEfinition)**
 - defines XML documentation content

* view sample application requests to generate a baseline of what should be sent and received to find potential weak spots that can be exploited
* useful starting point when testing web applicatoins when determining what avenues to explore for vulnerabilities
* **Architectural Diagram**
 - useful for mapping the topology to know how end points communicate with one another
 - helpful in determining which end point to attack first and in what order

### Legal Groundwork
* **Statement of Work (SOW)**
 - clearly states what tasks are to be accomplished
 - could be an appendix of a MSA
* **Master Services Agreement (MSA)**
 - specifies details of the business arrangement
* **Non-Desclosure Agreement (NDA)**
 - agreement that defines confidentiality, restrictions and/or sharing of information obtained during the PenTest engagement
 - is a bi-directional agreement

**Environmental Differences**
* export restrictions - restrictions on shipments, transfer of technology, or services outside of the U.S. (country the engagement is taking place)
 - main focus is on encryption standards from US to other countries
 - [U.S. State Department Resource](https://www.state.gov/strategictrade/overview/)

**Corporate Policies** with the current corperation must always be followed closely

**Written Authorization**
* obtain signiture from proper signing authority
 - "get out of jail free" card
 - Pen tests can reveal sensitive or confidential information
 - activities may be illegal without proper permission
 - signed permission makes you a white hat pen tester
* may need third-party authorization ie. cloud service provider
* get permission for any outside resources used

### Service Provider Agreements
* **Service-level Agreement (SLA)**
 - legal agreement between a service provider and a client
 - determines quality of work
 - will specify availability of services
 - will specify responsibilities of all parties involved with the engagement
 - may include requirements and limitation for penetration testing

### Standards and Methodologies Part 1
* **[MITRE ATT&CK Framework](https://attack.mitre.org)**
 - organizes known adversary tatics, techniques and procedures
 - contains mobile and enterprise tactics and techniques
 - allows you to determine if controls and technology are implented in such a way to detect and thwart known TTP's

* **[Open Web Application Security Project (OWASP)]**(https://www.owasp.org)
 - nonprofit resource to help make web applications more secure
 - [OWASP Top 10](https://www.owasp.org/Top10/)

### Standards and Methodologies Part 2
* **National Institute of Standards and Technology (NIST)**
 - [U.S. Standards Authority](https://www.nist.gov)
 
 - [NIST Cybersecurity Framework (CRF)](https://www.nist.gov/cyberframework)
 * framework to construct a cybersecurity program

 - [NIST Special Publication (SP) 800-171-3.11.2, 3.11.3](https://csrc.nist.gov/publications/detail/sp/800-171/rev-2/final)
 * goes over security controls of nonfederal systems and organizations

 - [NIST SP 800-53 Rev 5](https://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-53r5.pdf)
 * comprehensice documentation that lays out a vision of what type of security and privacy controls that are nessecary in todays IT environments 

* **[Open-source Security Testing Methodology Manual (OSSTMM)]**(https://www.untrustednetwork.net/files/osstmm.en.2.1.pdf)
 - dated open-source manual for testing security controls

* **Information Systems Security Assessment Framework [(ISSAF)](https://www.untrustednetwork.net/files/issaf0.2.1.pdf)
 - comprehensive security assessment framework
 - dated but open-source and extensive

### Enviornment and Scoping Considerations
* 




























