# UDEMY - Stephane Maarek: AWS Certified Solutions Architect Associate Course 
## Section 3: Getting Started with AWS
### AWS Cloud Overview - Regions & AZ
#### Regions
* all around the world
* names can be us-east-1, eu-west-3...
* is a cluster of data centers
* most AWS services are regioned-scoped which means if we use a service from one region into another, it will be like using the service for the first time
#### How to chose an AWS Region
* **Compliance**: with data governacne and legal requirements; data never leaves a region without your explicit permission
* **Proximity**: to custmoers reduce latency
* **Available Service**: new services and features aren't available in every Region
* **Pricing** pricing varies between regions
#### AWS Availability Zones
* each region has many availability zones (usually 3, min 3, max 6)
  - ap-southeast-2a
  - ap-southeast-2b
  - ap-southeast-2c
* each zone is one or more discrete data centers with redundant power, networking, & connectivity
* each zone is separate from each other so that they are isolated from disasters
* these zones are connected with high bandwidth, ultra-low latency networking
#### AWS Points of Presence (Edge Locations)
* has 400+ PoP in 90= cities across 40+ countries
* content is delivered to end users with lower latency

## Section 4: IAM & AWS CLI
### IAM Introduction: Users, Groups, Policies
* IAM = Identity & Access Management, Global service
* root account created by default, shouldn't be used or shared
* Users are people within your organization, can be grouped
* Groups can only contain users, not other groups
* User's do not have to belong to a group; user can belong to multiple groups
### IAM Permissions
* users or groups can be assinged **JSON** documents called policies
* these policies define the permissions of the users
* apply **least privilege principle**: only give a user enough permissions to effectively peform their duties

### IAM Users & Groups Hands On
* good practice to create admin user instead of using root account user
#### User Details (admin account user)
* username
* create an IM user
* autogenerate/create custom password
* add user to a group if it already exist or create a new group; can also add a policy directly to the user
  - admin group
  - one policy attached (**AdministratorAccess**)
* Review settings and add tags before creating user and group

### IAM Policies
#### Inline Policy
* this type of policy is only attached to a single user
#### IAM Policies Structure
* version number is always included: "2012-10-17"
* ID: an indentifier for the policy (optional)
* Statement: one or more individaul statements (required)
  - Sid: an identifier for the statement (optional)
  - Effect: whether the statement allows or denies access ("Allows/Deny")
  - Principal: account/user/role to which this policy applies to
  - Action: list of actions this policy allows or denies
  - Resource: list of resources to which the actions applies to
  - Condition" conditions for when this policy is in effect (optional)
```bash
{
  "Version": "2012-10-17",
  "Id": "S3-Account-Permissions",
  "Statement": [
    {
      "Sid": "1",
      "Effect": "Allow",
      "Principal": {
        "AWS": ["arn:aws:iam::123456789012:root"]
      },
      "Action": [
        "s3:GetObject",
        "s3:PitObject"
      ],
      "Resource": ["arn:aws:s3:::mybucket/*"]
    }
  ]
}
```

### IAM MFA Overview
#### Password Policy
* strong passwords = higher security for you accounts
* set a min length
* require specific characters types:
  - uppercase letters
  - lowercase letters
  - numbers
  - non-alphanumeric characters
* allow or deny all IAM users to change their own passwords
* require users to change their passwords periodically
* prevent password re-use
### Multi Factor Authentication - MFA
* combination of a password *you know* + security device *you own*
#### Virtual MFA device
* Google Authenticator used for a single device (phone)
* Authy used for multiple devices
* Authy has support for mutiple tokens on a single device
#### Universal 2nd Factor (U2F) Security Key
* YubiKey by Yubico (3rd Party)
* supports multiple users/accounts with a single security key
#### Hardware Key Fob MFA Device
* provided by Gemalto (3rd party)
#### Hardware Key Fob MFA Device for AWS GovCloud(US)
* provided by SecurePassID (3rd Party)

### IAM MFA Hands On
#### Setting MFA for Root User
* under username drop down menu select security credentials
  - must be logged in as root user
* 
### AWS Access Keys, CLI, SDK
#### Access Options
* AWS Management Console (protected by password + MFA)
* AWS CLI: protect by access keys
* AWS SDK: for code and is also protected by access keys
* access keys are generated through the AWS Console
* users manage their own access keys
* **Access Keys are secret, just like a password. DO NOT SHARE THEM**
* Access Key ID ~/= username
* Secret Access Key ~/= password
### AWS CLI
* enables you to interact with AWS services using commands in your command-line shell
* direct access to the public APIs of AWS services
* can develop scripts to manage your resources
* alternative to using AWS Management Console
### AWS SDK
* language specific APIs (set of libraries)
* enables you to access & manage AWS services programmatically
* embedded within your application
* supports many languages

### AWS CLI Setup on Windows
* install version 2
* update/upgrade but redownloading the same link and running the installer wizard

### AWS CLI Setup on Mac OS X
* install version 2
* update/upgrade but redownloading the same link and running the installer wizard

### AWS CLI Setup on Linux
* see AWS documentation

### AWS CLI Hands On
* generate access based on desired fuctionality
* in a terminal enter **aws configure** to set up the AWS CLI
* make sure you have your AWS Access Key ID and Secret Access Key available
* you can choose the default region as desired

### IAM Roles for AWS Service
* some AWS services will need to perform actions on our behalf
* to acheive this, create **IAM Roles** with specific permissions to the desired AWS services
#### Common Roles
* EC2 Instance Roles
* Lambda Function Roles
* Roles for CloudFormation

### IAM Security Tools
#### IAM Credentials Report (account-level)
* a report that lists all your account's users and the status of their various credentials
#### IAM Access Advisor (ucer-level)
* shows the service permissions granted to a user and when those services were last accessed

### IAM Best Practices
* do not use root account except for AWS account setup
* One physical user = One AWS user
* assign users to groups & assign permissions to groups
* create a strong password policy
* use & enforce the use of MFA
* create & use Roles for giving permissions to AWS services
* use access keys for Programmatic Access (CLI/SDK)
* audit permissions of your account using IAM Credentials Report & IAM Access Advisor
* NEVER SHARE IAM users & ACCESS KEYS


## Section 5: EC2 Fundamentals
### EC2 Basics
* one if the most popular of AWS's offering
* EC2: Elastic Cloud Computing = Infrastructure as a Service
* renting virtual machines (EC2)
* storing data on virtual drives (EBS)
* distributing load across machines (ELB)
* scaling the services using an auto-scaling group (ASG)
### EC2 Sizing & Configuration Options
* OS: Linux, Windows, Mac OS
* how much compute power & cores (CPU)
* how much RAM
* how much storage
  - network-attached (EBS & EFS)
  - hardware (EC2 Instance Store)
* network card: speed of the card, Public IP address
* firewalls rules: security group
* bootstrap script (configure at first launch): EC2 User data
#### EC2 User Data
* possible to bootstrap our instance using an *EC2 User Data* script
* **bootstrapping**: launching commands when a machine starts
* that script is *only run once* at the instance's *first start*
* used to automate boot tasks such as:
  - installing updates
  - installing software
  - downloading common files from the internet
  - anything you can think of
* EC2 User Data runs with root privileges

### EC2 Instance Types
* different types are optimized for different use cases
* naming convention **m5.2xlarge**
  - _m_: instance class
  - _5_: generation of the instance, will change overtime
  - _2xlarge_: size within the instance class
#### General Purpose
* great for diverse workloads
* good balance between compute memory and networking
#### Compute Optimized
* great for compute-intensive tasks that require hihg performance
  - batch processing
  - media transcoding
  - high performance web servers
  - HPC
  - scientific modeling & machine learning
  - dedicated gaming servers
#### Memory Optimized
* fast performacne for workloads that process large data sets in memory
  - high performance, relational/non-relational databases
  - distributed web scale cache stores
  - in-memory database optimized for BI
  - applications performing real-time processing of big unstructured data
#### Storage Optimized
* great for storage-intensive tasks that require high, sequential read & write access to large data sets on local storage
  - high frequency online transaction processing (OLTP) systems
  - relational & NoSQL databases
  - cache for in-memory databases (Redis)
  - data warehousing applications
  - distributed file systems

### Security Groups & Classic Ports Overview
#### Security Groups
* are the fundamental of networking security in AWS
* control how traffic is allowed into or out of our EC2 instances
* **ONLY** contain allow rules
* rules can reference IP or security group
* act as a firewall on the EC2 instance
* regulate:
  - access to ports
  - authorized IP ranges - IPV4/IPv6
  - control if inbound network traffic as well
* can be attached to multiple instances
* locked down to a region/VPC combination
* it is good to maitain one seperate security group for SSH access
* if your application is not accessible (time out), then it's a security group issue
* **_connection refused_** error is an application error or it's not launched
* by default all inbound traffic is **_blocked_** and all outbound traffic is **_authorized_**
#### Classic Ports to Know
* 22 = SSH log into a Linux instance
* 21 = FTP upload files into a file share
* 22 = SFTP upload files using SSH
* 80 = HTTP access unsecured websites
* 443 = HTTPS access secured websites
* 3389 = RDP for Windows instances

## Section 6: EC2 - Solutions Architect Associate Level
### Private vs Public vs Elastic IP
#### Private vs Public IP (IPv4)
* two types if IPs: **_IPv4 & IPv6_**
  - IPv4: 192.156.95.2
  - IPv6: 3ffe:1900:4545:2255:3366:5:6:8800
* IPv4 is most commonly used
* IPv6 is newer and solves problems for IoT devices
#### Elastic IPs
* a public IPv4 address that will not change when you start & stop an EC2 instance
* can only be attached to one instance at a time
* is available as long as you do not delete it
* you can mask the failure of an instance or software by rapidly remapping the address to another instance in your account
* by default you can only have 5 Elastic IPs in your account (can ask Amazon to increase this)
* should be avoided & instead use a random public IP & register a DNS name to it

### EC2 Placement Groups
#### Cluster
* cluster instance into a low-latency group in a single AZ
* single point of failure since all instances are on a single machine
* will have high network throughput
#### Spread
* spread instances across underlying hardware (max 7 instances per group per AZ) critical applications
* reduce risk of simultaneous failure
#### Parition
* spreads instances across many different partitions (which rely on different sets of racks) within an AZ
* can span multiple AZs in the same region
* up to 100s of EC2 instances
* partition failure can affect many EC2 but won't affect other partitions
* partition information is accessed as metadata

### Elastic Network Interface (ENI) - Overview
* logical component in a VPC that represents a VNIC
* each ENI can have the following attributes:
  - primary private IPv4, one or more secondary IPv4
  - one elastic IP (IPv4) per private IPv4
  - one public IPv4
  - one or more security groups
  - a MAC address
* you can create ENI independently & attach them on the fly (move them) on EC2 instances for failover
* bound to a specific AZ

































