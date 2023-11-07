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
* launching an EC2 instance with prebuilt AMI, the old Pub Key will exist alongside a new Pub Key if selected

#### Remediatin Exposed EC2 Key Pairs
* remove all the public keys in *_~/.ssh/authorized_keys_* file on all EC2 instances that have this/these exposed key(s)
* create a new key pair & add its Pub Key to the *_~/.ssh/authorized_keys_* file on all EC2 instances
* to automate this task use **SSM Run Command**


### EC2 Serial Console
* used to troubleshoot boot, network configuration, analyze reboot issues, etc.
* allows you to directly access your EC2 instance as if they was a cable connected directly into the serial port physically
* does not require any network capabilities
* use with supported Nitro-based EC2 instances
* **Must setup OS User & Password**
* only one active session per EC2 instance
* is disabled by default


### Connect to Windows EC2 Instance with a Lost Password - Using EC2Launch V2
1. verify EC2Launch v2 service is running (Windows AMIs with the EC2Launch v2 service)
2. detach the EBS root volume
3. attach the volume to a temporary instance as a secondary volume
4. Delete file *_%ProgramData%/Amazon/EC2Launch/state/.run-once*_
5. re-attach the volume to the original instance, then restart the instace
  - instacne will think that this is first time that it is booting
  - will ask for a new passowrd once it has booted


### EC2 Rescue Tool for Linux
* can diagnosis & troubleshoot common issues
* gather syslog logs, diagnosis problematic kernel parameters, diagnosis common OpenSSH issues, etc
* supports over 100 modules
* Amazon Linux 2, Ubuntu, RHEL, SUSE Linux
* install manually or using **AWSSupport-TroubleshootSSH** Automation Documentation
* upload the results directly to AWS Support or an S3 bucket

#### Use Cases
* collect system utilization reports
  - vmstate, iostat, mpstat, etc
* collect logs & details
  - syslog, dmesg, application error logs, & SSM logs
* detect system problems
  - asymmetric routing or duplicate root device lables
* automatically remediate system problems
  - correcting OpenSSH file permissions
  - disabling known problematic kernel problems
* can create a custom module

### EC2 Rescue Tool for Windows
* diagnose & troubleshoot common issues
* collect log files, troubleshoot issues, provide suggestions
* supports 2 modules (data collector, analyzer)
* Windows Server 2008 R2 or later
* install manually or using **AWSSupport-RunEC2RescueforWindows Tool**
  - Commands: **CollectLogs, FixAll, ResetAccess**
* use **AWSSupport-ExecuteEC2Rescue** automation documentation to troubleshoot connectivity issues
* upload the results directly to an S3 bucket


### IAM Security Tools
#### IAM Credentials Report (account-level)
* a report that lists all your account's users & the status of their various credentials

#### IAM Access Advisor (user-level)
* shows the service permissions granted to a user & when those services were last accessed
* can you this information to revise policies to ensure users have least privilege access


### IAM Access Analyzer
* find out which resources are shared externally
  - S3 Buckets
  - IAM Roles
  - KMS Keys
  - Lambda Fucntions & Layers
  - SQS Queues
  - Secrets Manager Secrets
* define **Zone of Trust** = AWS Account or AWS Organization
* access outside zone of trust => *_findings_*

#### IAM Access Analyzer Policy Validation
* validates your policy against IAM policy grammar & best practices
* general warnings, security warnings, errors, suggestions
* provides actionable recommendations

 #### IAM Access Analyzer Policy Generation
 * generates IAM policy vased on access activity
 * **CloudTrail** logs is reviewed to generate the policy with the *_fine-grained permissions & the appropriate Actions & Services_*
 * reviews **CLoudTrail** logs for up to 90 days


## Seection 4: Domain 2 - Security Logging & Monitoring
### Amazon Inspector
#### Automated Security Assements
* for EC2 instances
  - leverage the **AWS System Manager (SSM)** agent
  - analyze against unintended network accessiblity
  - analyze the running OS against known vulverabilities
* for Container Images push to Amazon ECR
  - assessment of Conatiner Images as they are pushed
* for Lambda Functions
  - identifies software vulnerabilities in fucntion code & package dependencies
  - assessment of functions as they are deployed
* Reporting & integration with **AWS Security Hub**
* send findings to **Amazon Event Bridge**
* contious scanning of the infrastructure only when needed
* package vulnerabilities (EC2,ECR, Lambda) - database of CVE
* network reachability (EC2)
*  a risk scire is associated with all vulberabilities for prioritization


### Logging in AWS
#### Security & Compliance
* help compliance requirements, AWS provides many service-specific security & audit logs

**Service Logs**
* **CloudTrail** - trace all API calls
* **Config Rules** - for config & compliance over time
* **CloudWatch Logs** - for full data retention
* **VPC Flow Logs** - IP traffic within your VPC
* **ELB Access Logs** - metadata of requests made to your load balancer(s)
* **CloudFront Logs** - web distribution access logs
* **WAF Logs** - full logging of all requests analyzed by the service

* logs can be analyzed using **AWS Athena** if they are stored in **S3**
* you should ecrypt logs in S3, control access using IAM & Bucket Policies, MFA
* move logs to **Glacier** for cost savings if you need to retain a lot of old data

### Systems Manager - Overview 
* helps you to manage your EC2 & On-Premises systems at scale
* get optional insights about the state of you infrastructure
* easily detect problems
* patching automation for enhanced compliance
* works for both Windows & Linux OS
* integrated with **CloudWatch** metrics/dashboards
* integrated with AWS Config
* free service (only acrue charges for resoucres that it uses or creates)

#### Features
* **Resource Groups**
* Operations Management
  - Explorer
  - OpsCenter
  - CloudWatch Dashboard
  - PHD
  - Incident Manager

* Shared Resources
  - **Documents**

* Change Management
  - Change Manager
  - **Automation**
  - Change Calendar
  - **Maintenance Windows**

* Application Management
  - Application Manager
  - AppConfig
  - **Parameter Store**

* Node Management
  - Fleet Manager
  - Compliance
  - **Inventory**
  - Hybrid Activations
  - **Session Manager**
  - **Run Command**
  - **State Manager**
  - **Patch Manager**
  - Distributer

#### How Systems Manager Works
* need to install the SSM agent onto the systems we control
  - installed by default on Amazon Linux 2 AMI & some Ubuntu AMIs
* If instance cannot be controlled by SSM, there is likely an issue with the SSM agent
* make sure the EC2 instances have a proper IAM role to allow SSM actions


### AWS Tags & SSM Resource Groups
#### AWS Tags
* you can add text key-value pairs called **Tags** to many AWS resources
* commonly used in EC2
* free naming, common tags are Name, Evironment, Team, etc
* used for
  - resource grouping
  - automation
  - cost allocation
* better to have too many tags than few

#### Resource Groups
*  create, view, or manage a logical group of resources via **Tags**
*  allows creation of logical groups of:
  - applications
  - different layers of an application stack
  - production vs development environment
* regional service
* works with EC2, S3, DynamoDB, Lambda, etc.


### SSM Documents & SSM Run Command
* documents can be in **JSON** or **YAML**
* you define parameters and actions

### SSM - Run Command
* execute a document (= script) or just run a command
* run commands across multiple instances (using resource groups)
* Rate Control/Error Control
* integrated with IAM & CloudTrail
* no need for SSH
* command output can be shown in the console, sent to **S3 bucket(s)**, or **CloudWatch Logs**
* send notifications to SNS about command status
* can be invoke using **EventBridge**

### SSM - Automation
* simplifies common maintenance & deployment tasks
  - such as restart instances, create an AMI, EBS snapshot
* **Automation Runbook** is the documentation for SSM Automation
  - defines actions preformed on your EC2 instances or AWS resources
  - can create custom runbooks
  - can be manually triggered with AWS Console, AWS CLI, SDK, or EventBridge
  - can be triggered on a schedule using **Maintenance Windows**
  - can be triggered by AWS Config for rules remediations


### SSM Parameter Store
* secure storage for configuration & secrets
* Optional Seamless Encryption using KMS
* serverless, scalable, durable, easy SDK
* version tracking of configurations/secrets
* security through IAM
* notifications with Amazon EventBridge
* integration with **CluodFormation**

#### SSM Parameter Store Hierarchy
* /my-department/
  - my-app/
    * dev/
      - db-url
      - db-password

* *_/aws/reference/secretsmanager/secret_ID_in_Secrets_Manager_*
* *_/aws/service/ami-amazon-linux-latest/amzn2-ami-hvm-x86_64-gp2_* (public)

#### Parameters Policies (for advanced parameters)
* allows you to assign a TTL to a parameter to force updating or deleting sensitive data such as passwords
* can assign multiple policies at a time


### SSM - Inventory
* used to collect metadata from your managed instances (EC2/On-premises)
  - can inlcude installed software, OS drivers, configurations, installed updates, running services, etc.
* view data in AWS Console or store in S3 bucket & query & analyze using Athena & QuickSight
* can specify metadata collection interval (minutes, hours, days)
* can query data from multiple AWS accounts & regions
* can Create Custom Inventory for your custome metadata (i.e. rack location of each manged instance) 

### State Manager
* automate the process of keeping your managed instances (EC2/On-premises) in a state that you define
* **Use Cases**: bootstrap intances with software, patch OS/software updates on a schedule
#### State Manager Association
* defines the state that you want to maintain on your managed instances
  - port 22 must be closed
  - antivirus must be installed
  - specify a schedule when this configuration is applied
* uses **SSM Documentation** to create an **Association** (i.e. SSM Documentation to configure CW Agent)


### SSM - Patch Manager
* automates the process of patching managed instances
* OS updates, application updates, security updates, etc
* supports both EC2 instances and on-premises servers
* supports Linux, macOS, Windows
* pact on-demand or on a schedule using Maintenance Windows
* scan instances & generate a patch compliance report (missing patches)
* report can sent to an S3 bucket

### SSM - Patch Manager
#### Patch Baseline
* defines which patches should & should not be installed on your instances
* ability to create custom Patch Baseline (specify approved/rejected patches)
* patches can be auto-approved within days of their release
* by default install only critical patches & patches related to security

#### Pre-Defined Patch Baseline
* managed by AWS for different OS (*_CANNOT BE MODIFIED*_)
* *_AWS-RunPatchBaseline (SSM Document)*_ applies both OS & application patches (Linux, macOS, Windows Server)

#### Custom Patch Baseline
* create your own *_Patch Baseline_* & choose which patches to auto-approve
* OS, allowed patches, reject patches, etc.
* ability to specify custom & alternative patch repositiories

#### Patch Group
* associate a set of instances with a specific **Patch Baseline**
* instances should be defined wiht the tag key **Patch Group**
* an instance can only be in one **Patch Group**
* **Patch Group** can only be registered wiht one **Patch Baseline**


### SSM - Session Manager
* allows you to start a secure shell on your EC2 & on-premises servers
* access through *_AWS Console, AWS CLI, or Session Manager SDK_*
* **does not need SSH access, bastion host, or SSH keys**
* supports Linux, macOS, & Windows
* logs connections to your instances & executed commands
* session log data can be sent to *_S3 Bucket_* or *_CloudWatch Logs_*
* *_CloudTrail_* can intercept **StartSession** events

#### IAM Permissions
* controls which users/groups can access *_Session Manager_* & which instances
* use tags to restrict access to only specific EC2 instances
* access *_SSM_* + write to *_S3_* + write to *_CloudWatch_*
* optionally, you can restrict commands a user can run in a session


### Unified CloudWatch Agent
* for virtual servers ( EC2 instances, on-prem, etc)
* collects additionall system level metrics such as RAM, processes, used disk space, etc.
* collected logs are sent to *_CloudWatch Logs_*
  - no logs from inside your EC2 instance will be sent to *_CloudWatch Logs_* without using an agent
* centralized configuration using *_SSM Parameter Store_*
* **make sure IAM permissions are correct**
* default namespace for metrics collected by the **UCW** is *_CWAgent_* (can be changed if desired)

#### procstat Plugin
* collect metrics & monitor system utilization of individual prcocesses
* suppports both Linux & Windows servers
* select which processes to monitor by
  - *_pid_file_*: name of process identification number files they create
  - *_exe_*: process name that matches string you specify (RegEx)
  - *_pattern_*: commnad lines used to start the process (RegEx)
* metrics collected by *_procstat_* plugin begins with *_"procstat"_* prefix (i.e. *_procstat_cpu_time, procstat_cpu_usage_*)


### CloudWatch Agent - Troubleshooting
* CloudWatch Agent fails to start
  - might be an issue with the configuration file
  - check config file logs on the EC2 instance at *_/opt/aws/amazon-cloudwatchagent/logs/configuration-validation.log_*
* cant find metrics collected by the agent
  - check you're using the correct namespace (default: **CWAgent**)
  - check configuration file *_amazon-cloudwatch-agent.json_*
* CloudWatch Agent not pushing log events
  - update to the latest CloudWatch Agent version
  - test conectivity to the CloudWatch Logs endpoint *_logs.<region>.amazonaws.com*_
  - review account, region, & log group configurations
  - check IAM Permissions
  - verify the system time on the instance is correctly configured


### CloudWatch Logs
* **Log Groups** arbitrary name, usually representing an application
* **Log Stream** instance within application/ log files/ contatiners
* can define log expiration policies
* logs can be sent to:
  - Amazon S# (exports)
  - Kinesis Data Streams
  - Kinesis Data Firehose
  - AWS Lambda
  - OpenSearch
* logs are encrypted by default
* can setup KMS-based encryption with your own keys

#### Sources
* **SDK, CloudWatch Log Agent, CloudWatch Unified Agent**
* **Elastic Beanstalk**: Collection of logs from application
* **ECS**: collection from containers
* **AWS Lambda**: collection from function logs
* **VPC Flows Logs**: VPC specific logs
* **API Gateway**
* **CloudTrail** based on filter
* **Route53**: Log DNS queries

#### CloudWatch Logs Insights
* utilized to query the logs collected by **CloudWatch**
* uses basic SQL syntax
* can query multiple log groups in different AWS accounts
* is a query engine, not a real-time engine

#### CloudWatch Logs Subscriptions
* get a real-time log event from **CloudWatch Logs** for processing $ analysis
* send to **Kinesis Data Streams, Firehose, or Lambda**
* **Subscription Filter** filter which logs eventsare are delivered to your destination
* can aggregate logs from multiple accounts and/or regions to a single destination


### CloudWatch - Alarms
* are used to trigger notifications for any metric
* has 3 states:
  - **OK**: means the alarm is not triggered
  - **INSUFFICIENT_DATA**: not enough data to determine a state
  - **ALARM**: threshold has been breach
* **Period**:
  - determines the length of time in seconds to evaluate the metric
  - high resolution custom metrics: 10 sec, 30 sec, or multiples of 60 sec
* alarms can be created based in **CloudWatch Logs Metrics Filters**
* to test alarms & notifications, set the alarm state to **Alarm** using the CLI
```bash
asw cloudwatch set-alarm-state --alarm-name "ALARM NAME" --state-value ALARM --state-reason "Testing Purposes"
```

#### Targets
* **STOP | TERMINATE | REBOOT | RECOVER** an EC2 Instance
* trigger an **Auto Scaling Action**
* send notification to SNS service (form which you can do anything)

#### Composite Alarms
* monitors the state of multiple alarms
* helpful to reduce "_alarm noise_" by creating complex composite alarms

#### EC2 Instance Recovery
* Status Check:
  - **Instance Status** : check the EC2 VM
  - **System Status**: check the underlying hardware
* **Recovery**: Same Private, Public, Elastic IP, metadata, placement group





















