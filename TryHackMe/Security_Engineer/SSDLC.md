# Sewcure Software Development Lifecycle (SSDLC)
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





















