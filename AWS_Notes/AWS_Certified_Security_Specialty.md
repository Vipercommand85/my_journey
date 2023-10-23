# AWS SCS-C02

## Section 3: Domain 1- Threat Detection & Incident Response
### GuardDuty Overview
* Intelligent Threat discovery to protect your AWS Account
* uses machine learning algorithms, anomaly detection, 3rd party data
* one click to enable (30 Day trial) no need to install software
* input data includes
  - **CloudTrail Event Logs** - to detect unusual API calls, unauthorized deployments
    * **CloudTrail Management Events** - create VPC subnet, create trail, etc
    * **CloudTrail S3 Data Events** - get object, list objects, delete object, etc
  - **VPC FLow Logs** - unusual internal traffic, unusual IP address
  - **DNS Logs** - compromised EC2 instances sending encoded data within DNS queries
  - **Optional Features** - EKS Audit Logs, RDS & Aurora, EBS, Lambda, S3 Data Events, etc.
* **EventBridge** can be setup to be notified in case of findings
* can protect against **CryptoCurrency** attacks as there is a dedicated "finding" for it

### GuardDuty - Advanced Features
* you can manage mutiple accounts
* associate the **Member** accounts with the **Administrator** account
  - through an AWS Organization
  - sending invitation through GuardDuty
* Administrator account can:
  - add & remove member accounts
  - manage GuardDuty within the associated member accounts
  - manage findings, suppression rules, trusted IP lists, threat lists
  - does not have to be the administrator of an AWS organization
  - a regular user account can become the administrator of GaurdDuty using **Delegated Administrator**

### Findings Automated Response
* findings are potential security issues for potentially malicious events happening in your AWS account
* can automate responses to these issues with **EventBridge**
* can send alerts to SNS (email, Lambda, Slack, Chime. etc)
* events are published to both the administrator & member accounts that it originates from
* each findin has a severity value between **0.1 to 8+ (High, Medium, Low)**
* finding naming convention: *_ThreatPurpose:ResourceTypeAffected/ThreatFamilyName.DetectionMechanism!Artifact_*
  - **ThreatPurpose**: primary purpose of the threat (i.e. Backdoor, CryptoCurrency)
  - **ResourceTypeAffected**: which AWS resource is the target (EC2, S3)
  - **ThreatFamilyName**: decribes the potential malicious activity (NetworkPortUnusual)
  - **DetectionMechanism**: method **GuardDuty** detected the finding (TCP/UDP)
  - **Artifact** : describes a resource that is used in the malicious activity (DNS)
* you can generate sample findings in **GuardDuty** to test your automations

#### EC2 Finding Types
* *_UnauthorizedAccess:EC2/SSHBruteForce,CryptoCurrency:EC2/BitcoinToo.B!DNS_*

#### IAM Finding Types
* *_Stealth:IANUser?CloudTrailLoggingDisabled,Policy:IAMUser/RootCredentialUsage_*

#### Kubernetes Audit Logs Finding Types
* *_CredentialAccess:Kubernetes/MaliciousIPCaller_*

#### Malware Protection Finding Types
* *_Execution:EC2/SuspiciousFile,Execution:ECS/SuspicoiusFile_*

#### RDS Protection Finding Types
* *_CredentialAccess:RDS/AnomalousBehavoir.SuccessfullLogin_*

#### S3 Finding Types
* *_Policy:S3/AccountBlockPublicAccessDisabled,PenTest:S3/KaliLinux_*

### Architectures

### Trusted & Threat IP Lists
* works only for **Public IP Address**
* in a multi-account **GuardDuty** setup, only the **GuardDuty Administrator** can manage those lists

#### Trusted IP List
* list of IP addresses & CIDR ranges that you trust
* **GuardDuty** will not generate findings for these trusted lists

#### Threat IP Lists
* list of known malicious IP addresses & CIDR ranges
* can be supplied by 3rd Parts threat intelligence or created custom for you

### Suppression Rules
* set of criteria that automatically filter & archive new findings
* some examples are low-value findings, false-positive findings, or threats that you don't intend to act on
* **suppressed findings are NOT sent to Security Hubm S3, Detective, or EventBridge**
* suppressed findings can be still viewed in the **Archive**

### Troubleshooting
**Specific for EXAM**
#### Problem 
* GuadDuty** is activated but didn't generate any DNS based findings

#### Reason 
* GuardDuty** only process DNS logs if you use the **defualt VPC DNS resolver**
* all other types of DNS resolvers won't generate DNS based findings
























