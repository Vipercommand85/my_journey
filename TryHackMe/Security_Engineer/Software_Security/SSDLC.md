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


![image](https://tryhackme-images.s3.amazonaws.com/user-uploads/61a7523c029d1c004fac97b3/room-content/a5904cf6f063a62e77df6623eb1cbd33.png)


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


![image](https://tryhackme-images.s3.amazonaws.com/user-uploads/61a7523c029d1c004fac97b3/room-content/8222ed08e31753d975ec3ec3aa2e43a9.png)



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

```
```
```
```
```
```

















