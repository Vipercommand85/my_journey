# Secure Software Development Lifecycle (SSDLC)
## Task 2: What is SSDLC?
* aims to introduce security at every stage of the SDLC

### Whay is secure SDLC Important?
* can help to minimize the cost of developing a new product as well as decrease the time needed for development
* helps to discover & reduce vulnerabilities early, reducing business risk massively
* Boosting security education and awareness: all stakeholders know each phase's security recommendations and requirements.


#### How mich more does it cost to identify vulnerabilities during the testing phase?
```
15X
```


## Task 3: Implementing SSDLC
### Understanding Security Posture
* perform a gap analysis to determine what activities and policies exist in your organisation and how effective they are
  * ensuring policies are in place (what the team does) with security procedures (how the team executes those policies)
  * when performing a gap analysis, every policy should have defined procedures to make them effective
* create Software Security Initiatives (SSI) by establishing realistic and achievable goals with defined metrics for success
  * this could be a Secure Coding Standard, playbooks for handling data, etcetera are tracked using project management tools.
* formalise processes for security activities within your SSI.
* after starting a program or standard, it is essential to spend an operational period helping engineers get familiarised with it and gather feedback before enforcing it
* invest in security training for engineers as well as appropriate tools
* ensure personnel are aware of new processes and the tools that will come with them to operationalise them
* invest in training early, ideally before establishing / onboarding the tool

### SSDLC Processes

![image](https://github.com/user-attachments/assets/2324c899-4a3c-4076-a2be-9cd91267d29f)

* **Risk Assessment** - it is essential to identify security considerations that promote a secure by design approach when in the planning and requirements stages
  * if a user requests a blog entry from a site, the user should not be able to edit the blog or remove unnecessary input fields.
* **Threat Modelling** - is the process of identifying potential threats when there is a lack of appropriate safeguards
  * it is very effective when following a risk assessment and during the design stage of the SDLC
  * design requirements state how the software will behave and interact
* **Code Scanning / Review** - can be either manual or automated
  * code Scanning or automated code reviews can leverage Static and Dynamic Security testing technologies
  * tese are crucial in the Development stages as code is being written.
* **Security Assessments** - like **Penetration Testing & Vulnerability Assessments** are a form of automated testing that can identify critical paths of an application that may lead to exploitation of a vulnerability
  * these are hypothetical as the assessment doesn't carry simulations of those attacks p
  * entesting identifies these flaws and attempts to exploit them to demonstrate validity
  * pentests and Vulnerability Assessments are carried out during the **Operations & Maintenance** phase of the SDLC after a prototype of the application



#### What should you understand before implementing SSDLC processes?
```
Security Posture
```

#### Dyring which stages should you perform a Risk Assessment?
```
Planning & Requirements
```

#### What should be carried out during the design phase?
```
Threat Modeling
```


## Task 4: Risk Assessment
* **Risk** refers to the likelihood of a threat being exploited, negatively impacting a resource or the target it affects
* **Risk Assessment** is used to determine the level of the potential threat
* risk identified in the risk assessment can be reduced or eliminated by applying appropriate controls during the risk mitigation process
* is usally followed by **Thrat Modeling**

### Performing a Risk Assessment
1. first step is usually to assume the software will be attacked & consider the factors the motivate the threat actor
  * you would list out factors such as the data value of the program, security level of companies who provide resources that the code depends on, how big is the software distribution
  * based on the above, write down the acceptable risk

2. next is **Risk Evaluation** which includes the-wrost-case scenatrio if the attacher has successfully attacked the software
   * this can be demostrated to executives & senior engineers by simulating a ransomeware attack
   * determine the value of the data to be stolen
   * how difficult is it to mount a successful attack

3. third, determine whether the target accepts requests across a network or only local access
   * whether authentication is needed for establishing a connection

### Types of Risk Assessments
#### Qualitative Risk Assessment
* most common type of risk assessment
* goal is to assess & classify risk into thresholds, i.e. "Low", "Medium", "High"
* systematically examines what can cause harm & what decisions should be made to define or improve adequate control measures
* each level has a priority, "High" = Urgent
```
Risk = Severity X Likelihood
```
* **Severity** the impact of the consequence
* **Likelihood** the probability of if happening, up to the accessor to judge these circumstances

#### Quantitavive Risk Assessment
* used to measure risk with a value
* can use tools to determine severity & likelihood or custom series of calculations based on a company's processes



![image](https://github.com/user-attachments/assets/d0035a03-b826-4f02-b777-e8d219680491)


#### What is a formula to assign a Qualitative Risk Level
```
Severity X Likelihood
```

#### Which type of Risk Assessment assigns numerical values to determine risk?
```
Quantitative Risk Assessment
```



## Task 5: Threat Modeling
* is best integrated into the design phaser of an **SDLC** before any code is written
* is a structured process of identifying potential security threats & prioritising techniques to mitigate attacks so that data or assets are protected

### STRIDE
* stand for **Spoofing, Tampering, Repudiation, Information Disclosure, Denial of Service, & Elevation/Escalation**
* is widely used & developed by **Microsoft**
* is built upon the **CIA** triad principle and helps to enable security professionals answer "What could go wrong with this system?"

#### Spoofing
* impersionation of a user by a malicious actor, violating the authentication principle (i.e. ARP, IP, DNS spoofing)

#### Tampering
* modification of information by an unauthorised user, violating the integrity principle

#### Repudiation
* lack of accountability for actions where responsibility cannot be attributed, violating non-repudiability

#### Information Disclosure
* violation of confidentiality, such as in data breaches

#### Denial of Service
* exhaustion of resources preventing authorised users from accessing a system, violating availability

#### Elevation of Privilege
* gaining unauthorised access by escalation privileges, violation authorisation principles


![image](https://github.com/user-attachments/assets/e80f8d72-3ef3-4dbb-a7ba-37cc86cac9be)


### DREAD
* stands for **Damage Potential, Reproducibility, Exploitability, Affected Users, Discoverability**

#### Damage Potential
* potential impact of a threat, scored on a scale of 0-10

#### Reproducibility
* complexity of reproducing the threat, scored 0-10

#### Exploitability
* how easily the threat can be exploited, scored 0-10

#### Affected Users
* the number of users impacted, scored 0-10

#### Discoverability
* the ease of discovering the threat, scored 0-10


### PASTA
* stands for **Process for Attack Simulation & Threat Analysis**
* it aligns technical requirements with business objectives & provides a strategic view of threats

#### Define objectives
* establish the scope & objects 

#### Define Technical Scope
* create architectural diagrams to map the attack surface

#### Decomposition & Analysis
* map trust boundaries & evaluate vulnerabilities

#### Threat Analysis
* identify potential threats based on intelligence

#### vulnerabilities & Weaknesses Analysis
* assess & mitigate Weaknesses

#### Attack/Exploit Enumeration & Modelling
* simulate attack paths & vulnerabilities

#### Risk Impact Analysis
* document risks & propose mitigation steps


![image](https://github.com/user-attachments/assets/70d87db4-4933-4796-bbb6-a17c14417ebb)



#### What threat modelling methodology assigns a rating system based on risk probability?
```
DREAD
```

#### What threat modelling methodology is built upon the CIA triad?
```
STRIDE
```

#### What threat modeling methodology helps align technical requirements with business objective?
```
PASTA
```



## Task 6: Secure Coding
### Secure Code Review & Analysis
* **Secure Code Review** is where the code itself is verified & validated to ensure vulnerabilities that are found can be mitigated & removed
* per **Verizon Data Breaches 2020**, **43%** of breaches were attacks on web applications and others resulted from vulnabilities in web applications
* implementing **secure code review** early in the development process helps to increase resilience & security of the product without any additional costs from future patches
* **code review** can be done automatically or manually
* a combination of both methodologies is critical, as not all organizations will have a **SME** which would be needed for manual code review

### Code Analysis
#### SAST
* **Static Application Testing** is a **white box** testing method that directly analyses the source code
* this testing is done before the application is running
* can be used to ensure that new features/branches of code are secure before merging with the rest of the project
* is usually done before the code is compiled

#### SCA
* **Software Composition Analysis** is used to scan dependencies for security vulnerabilities, (**SBOMs**)

#### DAST
* **Dynamic Application Security Testing** is a **black-box** testing methodology that finds vulnerabilities at runtime
* is a tool that can scan a web applications to find secrity vulnerabilities
* simulates automated attacks on web applications, mimicking a threat actor

#### IAST
* **Interactive Application Security Testing** analyses the code for vulnerabilities while the app is running
* is usually deployed side by side with the main application on the application server
* designed for web & mobile applications
* was developed to close the gab between **SAST & DAST**

#### RASP
* **Runtime Application Self Protection** is a runtime application integrated into an application
* it analyses inward/outward traffic as well as end-user behavioural patterns to prevent security attacks
* is different from **SAST/DAST/IAST** as it is deployed after the product is releases
* once an issue is found an alert is sent to the security team & immediately blocks access to the individual making the request
* this will secure the entire application against different attacks

### Choosing Tools

![image](https://github.com/user-attachments/assets/4881af96-12ea-47b6-b75f-41165d59627c)



#### Is it recommened to use SAST analysis at the beginning of the SDLC?
```
yes
```

#### Which type of code analysis uses the black-box method?
```
DAST
```

#### Which type of code analysis uses the white-box method?
```
SAST
```



## Task 7: Security Assessments
### Security Assessment
* plays a primary role in achieving security in SDLC
* is usually carried out at the end of the SDLC, in the **Operations & Naintenance** phase

#### Vulnerability Assessment
* focus on finding vulnerabilities but does not verify them
* automated tools run against an organization's network & systems (i.e. **OpenVAS, Nessus, ISS Scanner**)
* creates a report with a list of vulnerabilities usually found with an automated threat level severity classification. i.e. **High/Meduim/Low** or **CVSS score**

#### Penetration Testing
* will validate vulnerabilities, quantify risks, & attempt to penetrate systems
* can provide a thorough report with suggested countermeasures to mitigate the vulnerabilities

### Pros & Cons
#### Vulnerability Assessment
| Pros | Cons |
|:--------------:|:---------------:|
| Suitable for quickly identifying potential vulns | Can produce a large number of reports |
| Part of the Penetration Test | Quality depends on the tool used |
| Better for budget | Real-life scanarios for vulns are not considered |
|  | Low-risk vulns may be used to chain together vulns |

#### Penestration Assessment
| Pros| Cons|
|:--------------:|:--------------:|
| Tester shows organization what an attacker could do | Very expenseive|
| How any vulns could be used by threat actors | Requires extensive planning & time to carry out |
| Can be shown to the customer|  |



#### Which form of assessment is more budget-friendly & takes less time?
```
Vulnerability Assessment
```

#### Which type of asessment identifies vulnerabilities & attempts to exploit them?
```
Penetration Testing
```

#### When do you typically carry out Vulnerability Assessments or Pentests?
```
Operations & Maintenance
```


## Task 8: SSDLC Methodologies
* regardless of what development methodology is chosen there is a need to **build with security in mind & introduce testing focused on security**

### Microsoft's SDL
#### SDL Principles:
* **Secure by Design**: security is built-in quality attribute affecting the whole software lifecycle
* **Security by Default**: software systems are constructed to minimise potential harm caused by attackers
* **Secure in Development**: software deployment is accomplished by tools & guidance supporting users & admins
* **Communications**: software developers are prepared for occuring threats by communication openly & timely with users & admins


| Practice |	Why? |
|:-------------------:|:--------------------------------------------------------------------------:|
| **Provide Training** | Engineers, program and product managers must understand security basics and know how to build security into software and services to make products more secure while still addressing business needs and delivering user value.Practical training will complement and re-enforce security policies, SDL practices, standards, and software security requirements and be guided by insights derived through data or newly available technical capabilities | 
| **Define Security Requirements** | Considering security and privacy is a fundamental aspect of developing highly secure applications and systems. Regardless of the development methodology being used, must continually update security requirements to reflect changes in required functionality and changes to the threat landscape |
| **Define Metrics and Compliance Reporting** | It is essential to define the minimum acceptable levels of security quality and hold engineering teams accountable for meeting those criteria. Defining these early helps a team understand risks associated with security issues, identify and fix security defects during development, and apply the standards throughout the entire project |
| **Perform Threat Modeling** | This practice allows development teams to consider, document, and discuss the security implications of designs in their planned operational environment and in a structured fashion. Applying a structured approach to threat scenarios helps a team more effectively and less expensively identify security vulnerabilities, determine risks from those threats, make security feature selections and establish appropriate mitigations |
| **Establish Design Requirements** | The SDL is typically thought of as assurance activities that help engineers implement "secure features", in that the features are well-engineered concerning security. Engineers will normally rely on security features, such as cryptography, authentication, logging, etc. In many cases, the selection or implementation of security features has proven so complicated that design or implementation choices are likely to result in vulnerabilities. Therefore, it's crucially essential to apply these consistently and with a consistent understanding of their protection | 
| **Define and Use Cryptography Standards** | It's critically important to ensure all data, including security-sensitive information and management and control data, is protected from unintended disclosure or alteration when transmitted or stored. Encryption is typically used to achieve this. E.g., only use industry-vetted encryption libraries and ensure they're implemented to allow them to be easily replaced if needed |
| **Manage the Security Risk of Using Third-Party Components** | When selecting third-party components to use, it's essential to understand the impact of a security vulnerability on the security of the more extensive system into which they are integrated. Having an accurate inventory of third-party components and a plan to respond when new vulnerabilities are discovered will go a long way toward mitigating this risk |
| **Use Approved Tools** | Define and publish a list of approved tools and their associated security checks, such as compiler/linker options and warnings. Engineers should strive to use the latest version of approved tools, such as compiler versions, and take advantage of new security analysis functionality and protections |
| **Perform  Security Testing (SAST, DAST, IAST)** | Analysing the source code before compilation provides a highly scalable method of security code review and helps ensure that secure coding policies are being followed. The same goes for performing run-time verification of your fully compiled or packaged software checks functionality that is only apparent when all components are integrated and running |
| **Perform Security Assessments: Vulnerability Assessment & Penetration Testing** | The objective of a penetration test is to uncover potential vulnerabilities resulting from coding errors, system configuration faults, or other operational deployment weaknesses. As such, the test typically finds the widest variety of vulnerabilities |
| **Establish a Standard Incident Response Process** | Preparing an Incident Response Plan is crucial for helping to address new threats that can emerge over time. The plan should include whom to contact in case of a security emergency and establish the protocol for security servicing, including methods for code inherited from other groups within the organisation and for third-party code |


### OWASP's S-SDLC
#### S-SDLC Principles
* SDL is a collection of mandatory security activities grouped by the traditional software development lifecycle phases.
* Data is collected to assess training effectiveness.
* In-process metrics are used to confirm process compliance.
* Post-release metrics are used to guide future changes.
* SDL places heavy emphasis on understanding the cause and effect of security vulnerabilities.
* A development team must complete the sixteen mandatory security activities to comply with the Microsoft SDL process.



![image](https://github.com/user-attachments/assets/79147277-28f7-4914-b222-7503be5903c3)



#### What methodology follows a set of mandatory procedures embedded in the SDLC?
```
Microsoft SDL
```

#### What Maturity Model helps to measure tailored risks facing your organization?
```
SAMM
```

#### What Maturity Model acts as a measuring stick to determine your security posture?
```
BSIMM
```



## Task 9: Secure Spave Lifecylce

FLAG ```THM{D0-A-Barr3l-R011}```
