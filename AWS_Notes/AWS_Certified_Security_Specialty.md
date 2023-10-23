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

### AWS Security Hub
* must enable **AWS Config Service**
* central security tool to manage security across several AWS accounts & automate security checks
* integrated dashboards showing current security & compliance status to quickly take actions
* automatically aggregates alerts in predefined or personal finding formats from various AWS services & AWS partner tools
  - Config
  - GuardDuty
  - Inspector
  - Macie
  - IAM Access Analyzer
  - AWS Systems Manager
  - AWS Firewall Manager
  - AWS Health
  - AWS Partner Network Solutions
 
### AWS Security Hub - Advanced
#### Cross-Region Aggregation
* allows you to aggregate findings, events, security scores from multiple Regions to a singel aggregation Region

#### AWS Orgnaizations Integration
* manage all accounts in the Organization
* **Security Hub** automatically detects new accounts
* by default, **Organization Management Account** is the **Security Hub Administrator**
* can designate a **Security Hub Administrator** from member accounts

#### AWS Config
* must be enabled as **Security Hub** uses **AWS Config** to perform its security checks
* must be enabled on **ALL Accounts**
* **Security Hub** does **NOT** manage **AWS Config**

### Security Hub - Security Standards
* generates findings & continuous checks against the rules in a set of supported security standards
* these standards include:
  - **CIS AWS Foundations**
  - **PCI DSS**
  - **AWS Foundational Security Best Practices**
 
### Security Hub - Intergration with GuardDuty
* automatically enabled when **Security Hub** is enabled (can be disabled)
* **GuardDuty** will send findings to **Security Hub**
* findings are sent in **AWS Security Finding Format (ASFF)**
* findings are usually sent within 5 minutes
* Archiving a **GuardDuty** finding will **NOT** update the setting for the rules that generated the finding in **Security Hub**

### Sevice Intergration
#### Ingestion Services
* AWS Config
* Firewall Manager
* GuardDuty
* AWS Health
* IAM Access Analyzer
* Inspector
* IoT Device Defender
* Macie
* SSM Patch Manager
#### Receiver Services
* Audit Manager
* AWS Chatbot
* Amazon Detective
* Trusted Advisor
* SSM Explorer & OpsCenter

### #rd Party Integration
### Ingestion Services
* 3Coresec
* Alert Logic
* Aqua
#### Receiver Services
* Atlassian
* Fireeye
* Fortinet
#### Update Findings in Security Hub
* Atlassian
* ServiceNow

### Findings
* consumes findings using **AWS Security Finding Format (ASFFF)**
* **Security Hub** automatically updates & deletes findings
* findings pas 90 days are automatically deleted

### Security Hub - Insights
* collection of related findings that identifies a security area that requires attention & intervention
* brings findings from across finding providers
* each **Insight** is defined by a **Group By** statement & optional filters
* **Built-In Managed Insights**: return results only if you enabled related product intergration or security standard (can not edit or delete)
* **Custom Insights** - track issues specific to your enviornment

### Security Hub - Custom Actions
* helps to automate **Security Hub** with **EventBridge**
* allows you to create actions for response & remediation to selected findings within the **Security Hub Console**
* **EventBridge** event type is **Security Hub Finsings - Custom Action**


### Amazon Detective - Overview
* **GuardDuty, Macie, & Security Hub** are used to identify potential security isses or findings
* sometimes security findings require deeper analysis to isolate the root cause & take action
* **Amazon Detective** analyzes, investigates, & quickly identifies **root cause of security isses** or suspicious activities
* automatically collects & processes events from **VPC Flow logs, CloudTrail, GuardDuty** & creates a correlated view

### PennTesting on AWS Cloud
* AWS customers are welcomed to carry out security assessments or penetration tests against their AWS infrastructure **without prior approval** for:
  - Amazon EC2 instances, NAT Gateways, & Elastic Load Balancers
  - Amazon RDS
  - Amazon CloudFront
  - Amazon Aurora
  - Amazon API Gateways
  - AWS Lamdda & Lambda Edge Functions
  - Amazon Lightsail resources
  - Amazon Elastic Beanstalk enviornments

#### Prohibited Activites
* DNS zone walking via **Amazon Route 53 Hosted Zones**
* DoS, DDos, Simulated DDoS
* Port Flooding
* Protocol Flooding
* Request Flooding
* for any other simulated events, contact (AWS)[aws-security-simulted-event@amazon.com]

### DDoS Simulation Testing on AWS
* controlled DDoS attack which enables you to evaluate the resiliency of your appilcation & to practice event response
* must be performed by an approved **AWS DDoS Test Partner**
* the target can be either **Protected Resources** or **Edge-Optimized API Gateway** that is subscribed to **Shield Advanced**
* attack must **NOT** originate from AWS resources
* attack must **NOT** exceed 20 Gigabits/second
* attack must **NOT** exceed 5 Million packets/second for **CloudFront** & 50K packets/second for any other service

### Compromised EC2 Instance
#### EC2 Instacne
1. Capture the instance's metadata
2. Enable Termination Protection
3. Isolate the instance (replace instance's SG - no outbound traffic authorized)
4. Detach the instance from any ASG (suspend processes)
5. deregister the instance from any ELB
6. Snapshot the EBS volume (for deep anaylsis)
7. create a Foresnsic SG & attached snapshot volumes for deep analysis
8. Tag the EC2 instance (i.e. investigation ticket)

* **Offline Investigation**: shutdown instance and analysis
* **Online Investigation**: using snapshot memory or capture network traffic
* automate the isolation process with **Lambda functions**
* automate memory capture with **SSM Run Command**

#### S3 Bucket
1. Identify the compromised S3 bucket using **GuardDuty**
2. Identify the source of the malicious activity (i.e. IAM user role) & the API calls using **CloudTrail** or **Amazon Detective**
3. Identify whether the source was authorized to make those API calls
4. Secure your S3 bucket, recommended settings:
  - S3 Block Public Access Settings
  - S3 Bucket Policies & User Policies
  - VPC Endpoints for S3
  - S3 Presigned URLs
  - S3 Access Points
  - S3 ACLs

#### ECS Cluster
1. Identify the affected ECS Cluster using **GuardDuty**
2. Identify the source of the malicious activity (i.e. container image, taks, etc)
3. Isolate the impacted tasks (deny all ingress/egress traffic to the task using security groups)
4. Evaluate the presence of malicious activity (malware)

#### RDS Database Instance
1. Identify the affected DB instance & DB user using **GuardDuty**
2. If not legitimate behavior
  - restrict network access ( new SG & NACLs)
  - restrict the DB access for the suspected DB user (typically user creds have been compromised)
3. change suspected DB user's password
4. review DB Audit Logs to identify leaked data
5. secure your RDS DB instance, recommeded settings
  - use **Secerts Manager** to rotate the DB password
  - use **IAM DB Authentication** to manage DB users' access without passwords


### Compromised AWS Credentials
1. Identify the affected IAM user using **GuardDuty**
2. change the exposed AWS Credentials
3. invalidate temporary credentials by **attaching an explicit Deny policy** to the affected IAM user with an STS date condition (see IAM section)
4. check **CloudTrail Logs** for other unauthorized activity
5. review your AWS resources and delete unauthorized resources
6. Verify your AWS account information

#### Compromised IAM Role
1. invalidate temporary credential by **attaching an explicit Deny policy** to the affected IAM user with an STS date condition
2. revoke access for the identity to the linked AS if any
3. check **CloudTrail** logs for other unauthorized activity
4. review your AWS resources & delete unauthorized resources
5. verify your AWS account information

#### Compromised Account
1. delete and change all AWS Access Keys
2. delete and change any unauthorized IAM user credentials
3. delete and change all EC2 Key Pairs
4. check **CloudTrail** logs for other unauthorized activity
5. review your AWS resources & delete unauthorized resources
6. verify your AWS account information


### EC2 Key Pairs - Explaination
* keep your private key secure (no way to recover it if lost)
* you can create Key Pairs outside of AWS and upload them
* **ED22519** & **2048-bit SSH-2 RSA** keys are supported
* key pairs do not get deleted from EC instance's root volumes when the Private Key is removed from the EC2 Console
* 























