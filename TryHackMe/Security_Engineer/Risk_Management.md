## Task 1: Introduction
* **Risk Avoidance**: the act of removing an asset from being able to be threatened by an attacker
* **Risk Acceptance**: having full knowledge of the risk and not implementing any controls to mitigate or eliminate the risk
* **Risk Reduction**: the act of providing controls to mitigate the likelyhood of an attack, impact from a successful attack, vulnerability in/to an asset

### If you bring a laptop with you in case your main laptop fails, what would you call this response to risk?
```bash
Risk Reduction
```

### If you decide not to take any futher actions because you feel the likleyhood of your laptop failing is slim since it has never failed before, what do you call this repsonse to risk?
```bash
Risk Acceptance
```


## Task 2: Basic Terminology
### Threat
* an intentional or accidental event that cam compromise the security of an information system
* *potential harm or danger* to an individual, organization, or system
### 3 Main Categories
### Human-made Threats
* Terrorism
* wars & conflicts
* riots & civil unrest
* cyberattacks
* industrial accidents
* arson
### Technical Threats
* power outages
* software & hardware failures
* data breaches
* netowrk & system vulnerabilities
* equipment malfunctions
### Natural Threats
* earthquakes
* floods
* hurricanes
* tornados
* blizzards

### Vulnerability
* a weakness in the system or software that can be exploited by a threat to cause harm

### Asset
* an economic resource owned or controlled by an individual, company, or government
* can include cash & cash equivalents, accounts receivable, investments, stock, equipment, real estate, & intellectual property

### Risk
* the probability of a *threat source* exploiting an exisitng *vulnerability (in an asset)* that results in adverse business effects
* the potential of encountering unforeseens events or circumstances that may lead to a loss, damage, or negative outcome
* in information systems, risk refers to the potential threats, vulnerabilities, and negative consequences arising from the interaction between IT infrastructure, software applications, data, and users

### Risk Management
* a process of identifying, assessing, & responding to risks associated with a particular situation or activity
* **Risk Management Policy**: is a set of procedures & processes designed to minimise the chances of an adverse event or outcome taking place
  - helps organizations identify, assess, & manage potential & actual risks related to their operations, financial activities, & compliance with applicable laws & regualtions
* **Information Systems Risk Management (ISRM)**: system of policies, procedures, & practices that seek to protect a company's computer system/network from various threats

### What do you call the potential for a loss or an incident that may harm the CIA of an organization's information assets?
```bash
Risk
```

### What do you call a weakness an attacker could exploit to gain unauthorized access to a system or data?
```bash
Vulnerability
```

## What do you consider a business latop?
```bash
Asset
```

### From a legal business perspective, what do you classify ransomware groups?
```bash
Threat
```


## Risk Assessment Methodologies
### NIST SP 800-30
* risk assessment methodology developed by the **National Institute of Standards & Technology (NIST)**
* involves identifying & evaluating risks, determining the likelihood & impact of each risk, & developing a risk response plan

### Facilitated Risk Analysis Process (FRAP)
* risk assessment methodology that involves a group of stakeholders working together to identify & evaluate risks

### Operationally Critical Threat, Asset, & Vulnerability Evaluation (OCTAVE)
* risk assessment methodology that focuses on identifying & prioritising assets based on their criticality to the organization's mission
* assessing threats & vulnerabilities that could impact those assets

### Failure Modes & Effect Analysis (FMEA)
* risk assessment mehtodology commonly used in engineering & manufacturing
* involves identifying potential failure modes for a system/process
* then analysing the possible effects of those failures & likelihood of their occurrence

### What is the name of the risk assessment methodology developed b y NIST?
```bash
NIST SP 800-30
```



## Task 4: Frame Risk
* risk management begins with establishing a risk context for the purpose of developing a risk management strategy
* the following must be identified to establish a reasonable risk fram:
### Risk Assumptions
* what are the assumptions about threats & vulnerabilities?
* what is the likelihood of occurance
* what would be the impact & consequences?

### Risk Constraints
* what are the limiting factors to assessing, responding, & monitoring risks?

### Risk Tolerance
* what are the acceptable levels of risk?
* what is the acceptable degree of risk uncertainty?

### Priorities & Trade-offs
* what are the high-priority business fucntions?
* what are the trade-offs among the different types of faced risks?


## Task 5: Assess Risk
* is the second step of risk mangement
* in this step you look to answer the following questions:
    - **Threats**: what are the threats that you need to consider?
    - **Vulnerabilities**: what are the vulnerabilities that you have to deal with?
    - **Impact**: what would be the impact if a threat exploited a vulnerability?
    - **Likelihood**: what is the likelihood of this vulnerability being exploited?

### Threats
* **Physical Damage**: from natural causes to human-made
* **Outsider Threat**: actors that are not part of your organization looking to do harm to your systems 
* **Insider Threat**:  actors that are part of your organization looking to do harm to your systems  


## Task 6: Risk Analysis
### Qualitative Risk Analysis
* is where we assiggn ratings to risk such as **_high_**, **_medium_**, & **_low_** or can be colored coordinated
![c2cab5ae8c38c4c5b827374692534b35](https://github.com/Vipercommand85/my_journey/assets/65506052/44773791-f6c9-4c63-9e61-0389c5c75c01) 

### Quantitative Risk Analysis
* is where we assign monetary values & use that as a basis for decision-making

### Single Loss Expectancy
* **SLE = AssestValue X EF**
  - **Sinlge Loss Expactancy**: the loss incurred due to the realisation fo a threat represented as a monetary value
  - **Asset Value**: the monetary valuation of an asset
  - **Exposure Factor**: the percentage of loss a realised threat can cause to an asset
### Annual Loss Expectancy
* **ALE = SLE X ARO**
  - **Annual Loss Expectancy (ALE)**: the loss the company expects to lose per year due to the threat
  - **Annual Rate of Occurance (ARO)**: the expected number of times this threat is realised yearly/frequency per year

### Annual Loss Expectancy before Safeguard
* ALEbeforeSafegaurd = _SLEbeforeSafeguard_ X _ARObeforeSafeguard_
### Annual Loss Expectancy after Safeguard
* ALEafterSafeguard = _SLEafterSafeguard_ X _AROafterSafeguard_
### Single Loss Expectancy after Safeguard
* SLEafterSafeguard = _AssetValue_ X _EFafterSafeguard_
### Value of Safeguard
* ValueofSafeguard = _ALEbeforeSafeguard_ - _ALEafterSafeguard_ - _CostofSafeguard_


## Task 7: Respond to Risk
### Risk Avoidance
* is when a company decides to eliminate the activity that leads to the risk
#### Examples
* a bank might decide that all employees computers cannot access the internet to protect its systems against all online threats
* an organization might instruct its employees to work exclusively using workstations on its premises to prevent data from being stolen

### Risk Transferance
* a company might consider the risk too high to handle, so it decided to purchase insurance
* also referred to as **Risk Sharing**

### Risk Mitigation
* a company might invest in countermeasures to reduce risk to an acceptable level
* an example is installing antivirus software on endpoints

### Risk Acceptance
* knowingly allows risk to remain present since the costs of countermeasures would exceed the loss incurred if that risk is exploited

### Risk Management Exercises
#### Question 1
* **Asset**: Laptop
* **Risk**: Malware
* **Asses Value**: $2,000
* **EF**: 50%
* **ARO**: 2

* **Safeguard**: Antivirus License
* **Cost of Safeguard**: $20
* **EF after Safeguard**: 10%

* **SLEbeforeSafeguard**: $2,000 X .5 = $1,000
* **ALEbeforeSafeguard**: $1,000 X 2 = $2,000
* **SLEafterSafeguard**: $2,000 X .1 = $200
* **ALEafterSafegaurd**: $200 X 2 = $400
* **ValueofSafeguard**: $2,000 - $400 - $20 = $1,580

**Implement Safeguard** because **ValueofSafeguard** is less than **ALEbeforeSafeguard**  


#### Question 2
* **Asset**: Smartphone
* **Risk**: Theft
* **Asses Value**: $1,000
* **EF**: 100%
* **ARO**: .5

* **Safeguard**: Encryption
* **Cost of Safeguard**: $20
* **EF after Safeguard**: 1%

* **SLEbeforeSafeguard**: $1,000 X 1 = $1,000
* **ALEbeforeSafeguard**: $1,000 X .5 = $500
* **SLEafterSafeguard**: $1,000 X .1 = $100
* **ALEafterSafegaurd**: $100 X .5 = $50
* **ValueofSafeguard**: $1,000 - $500 - $50 = $450

**Implement Safeguard** because **ValueofSafeguard** is less than **ALEbeforeSafeguard**

### Question 3
* **Asset**: Laptop
* **Risk**: Fall
* **Asses Value**: $2,000
* **EF**: 50%
* **ARO**: .25

* **Safeguard**: Rugged Laptop
* **Cost of Safeguard**: $1,500
* **EF after Safeguard**: 10%

* **SLEbeforeSafeguard**: $2,000 X .5 = $1,000
* **ALEbeforeSafeguard**: $1,000 X .25 = $250
* **SLEafterSafeguard**: $1,000 X .1 = $100
* **ALEafterSafegaurd**: $100 X .25 = $25
* **ValueofSafeguard**: $1,500 - $250 - $25 = $1,225

**Implement Safeguard** because **ValueofSafeguard** is less than **ALEbeforeSafeguard**


* **Asset**: Server
* **Risk**: Disk Failure
* **Asses Value**: $10,000
* **EF**: 25%
* **ARO**: .35

* **Safeguard**: RAID
* **Cost of Safeguard**: $70
* **EF after Safeguard**: 0%

* **SLEbeforeSafeguard**: $10,000 X .5 = $5,000
* **ALEbeforeSafeguard**: $5,000 X .35 = $1,750
* **SLEafterSafeguard**: $5,000 X 0 = $0
* **ALEafterSafegaurd**: $0 X .35 = $0
* **ValueofSafeguard**: $1,750 - $0 - $70 = $1,675

**Implement Safeguard** because **ValueofSafeguard** is less than **ALEbeforeSafeguard**

## Flag from this section
```bash
THM{Excellent_Risk_Management}
```


## Task 8: Monitor Risk
* once risks have been assessed and responded to with proper measures, we need to next monitor those risk to ensure the effectiveness, change, & compliance of the risk that was repsonded to

### Effectiveness Monitoring
* a solution might be effective now but it might become ineffective in the future
* suppose **_password complexity_** has been implemented, if users are writing down their passwords
* this control has now become ineffective

### Monitoring Change
* changes can include but are not limited to opening new branches, creating new positions, & acquiring other companies
* any business change might introduce new risks & render existing controls invalid

### Compliance Monitoring
* new laws may be created, new regulatory requirements might come into effect, or new policies might be enforced
* audit findings also need to be monitored

#### What are you monitoring if you want to confirm whether the new policy enforcing laptop disk encryption is helping mitigate data breach risk?
```bash
Effectiveness Monitoring
```

#### What are you monitoring if you are keeping an eye on new regulations & laws?
```bash
Compliance Monitoring
```


## Task 9: Supply Chain Risk Management
* **Risk associated with hardware**: Depending on the importance of the target, a threat actor can add a hardware Trojan to an electronic device. As with software Trojans, the purpose is to provide unauthorised functionality.
* **Risk associated with software**: Software Trojans require access to the software to plant it. In the worst-case scenario, the attacker would succeed in adding the Trojan directly to the source code.
* **Risk associated with services**: The risk can range from downtime to data breaches. A company must ensure that the service provider has a good security program before using its service.


## Task 10: Putting it All Together
### _Implement Safeguard_ because _ValueofSafeguard_ is less than _ALEbeforeSafeguard_
* **Asset**: Laptop
* **Risk**: Theft from Office
* **Asses Value**: $2,500
* **EF**: 100%
* **SLE**: $2,500
* **ARO**: .05
* **Loss Value**: $125
* **Safeguard**: Laptop Lock & Security Cable
* **Cost of Safeguard**: $45
* **EF after Safeguard**: 6%

* **SLEbeforeSafeguard**: $2,500 X 1 = $2,500
* **ALEbeforeSafeguard**: $2,500 X .05 = $125
* **SLEafterSafeguard**: $2,500 X .06 = $150
* **ALEafterSafegaurd**: $150 X .06 = $9
* **ValueofSafeguard**: $125 - $9 - $45 = $71

### _Implement Safeguard_ because _ValueofSafeguard_ is less than _ALEbeforeSafeguard_
* **Asset**: Workstation
* **Risk**: Disk Failure
* **Asses Value**: $3,000
* **EF**: 70%
* **SLE**: $2,100
* **ARO**: .2
* **Loss Value**: $420
* **Safeguard**: External Backup
* **Cost of Safeguard**: $200
* **EF after Safeguard**: 0%

* **SLEbeforeSafeguard**: $3,000 X .7 = $2,100
* **ALEbeforeSafeguard**: $2,100 X .2 = $420
* **SLEafterSafeguard**: $2,100 X 0 = $0
* **ALEafterSafegaurd**: $0 X .2 = $0
* **ValueofSafeguard**: $420 - $0 - $200 = $220

### _Implement Safeguard_ because _ValueofSafeguard_ is less than _ALEbeforeSafeguard_
* **Asset**: Smartphone
* **Risk**: Theft
* **Asses Value**: $1,250
* **EF**: 100%
* **SLE**: $1,250
* **ARO**: .35
* **Loss Value**: $437.5
* **Safeguard**: Enable Encryption
* **Cost of Safeguard**: $10
* **EF after Safeguard**: 40%

* **SLEbeforeSafeguard**: $1,250 X 1 = $1,250
* **ALEbeforeSafeguard**: $1,250 X .35 = $437.5
* **SLEafterSafeguard**: $1,250 X .4 = $500
* **ALEafterSafegaurd**: $500 X .35 = $175
* **ValueofSafeguard**: $437.5 - $175 - $10 = $252.5


### _Reject Safeguard_ because _ValueofSafeguard_ is more than _ALEbeforeSafeguard_
* **Asset**: Workstation
* **Risk**: Screen Failure
* **Asses Value**: $3,000
* **EF**: 10%
* **SLE**: $300
* **ARO**: .05
* **Loss Value**: $15
* **Safeguard**: Backup Screen
* **Cost of Safeguard**: $250
* **EF after Safeguard**: 0%

* **SLEbeforeSafeguard**: $3,000 X .1 = $300
* **ALEbeforeSafeguard**: $300 X .05 = $15
* **SLEafterSafeguard**: $3,000 X 0 = $0
* **ALEafterSafegaurd**: $0 X .05 = $0
* **ValueofSafeguard**: $15 - $0 - $250 = $ - 235

### _Implement Safeguard_ because _ValueofSafeguard_ is less than _ALEbeforeSafeguard_
* **Asset**: Workstation
* **Risk**: Malware
* **Asses Value**: $3,000
* **EF**: 85%
* **SLE**: $2,550
* **ARO**: .35
* **Loss Value**: $892.5
* **Safeguard**: Antivirus License
* **Cost of Safeguard**: $75
* **EF after Safeguard**: 5%

* **SLEbeforeSafeguard**: $3,000 X .85 = $2,550
* **ALEbeforeSafeguard**: $2,550 X .35 = $892.5
* **SLEafterSafeguard**: $3,000 X .05 = $150
* **ALEafterSafegaurd**: $150 X .35 = $52.5
* **ValueofSafeguard**: $892.5 - $52.50 - $75 = $764.7

### _Implement Safeguard_ because _ValueofSafeguard_ is less than _ALEbeforeSafeguard_
* **Asset**: Laptop
* **Risk**: Theft Outside Office
* **Asses Value**: $2,500
* **EF**: 100%
* **SLE**: $2,500
* **ARO**: .2
* **Loss Value**: $500
* **Safeguard**: Activated Encryption
* **Cost of Safeguard**: $75
* **EF after Safeguard**: 24%

* **SLEbeforeSafeguard**: $2,500 X 1 = $2,500
* **ALEbeforeSafeguard**: $2,500 X .2 = $500
* **SLEafterSafeguard**: $2,500 X .24 = $600
* **ALEafterSafegaurd**: $600 X .2 = $120
* **ValueofSafeguard**: $500 - $120 - $75 = $310

### _Implement Safeguard_ because _ValueofSafeguard_ is less than _ALEbeforeSafeguard_
* **Asset**: Office
* **Risk**: Intrusion & Theft
* **Asses Value**: $20,000
* **EF**: 100%
* **SLE**: $20,000
* **ARO**: .1
* **Loss Value**: $2,000
* **Safeguard**: Security Lock with PIN Code
* **Cost of Safeguard**: $750
* **EF after Safeguard**: 15%

* **SLEbeforeSafeguard**: $20,000 X 1 = $20,000
* **ALEbeforeSafeguard**: $20,000 X .1 = $2,000
* **SLEafterSafeguard**: $20,000 X .15 = $3,000
* **ALEafterSafegaurd**: $3,000X .1 = $300
* **ValueofSafeguard**: $2,000 - $300 - $750 = $950


### Flag from this section
```bash
THM{OFFICE_RISK_MANAGED}
```
