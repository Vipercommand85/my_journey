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


## Section 7: EC2 Instance Storage
### EBS Overview
* **EBS (Elastic Block Store) Volume**: a network drive you can attach to your instance while they run
*  allows instance to persist data even after termination
*  they can only be mounted to **one** instance at a time (at the **CCP** level)
*  **Associate/Solutions Architect/Developer/SysOps Level** can have a "multi-attach" feature for some EBS
*  they are bound to a specific AZ
  - you can take a snapshot of a volume & attach that snapshot to another instance in another AZ
*  can think of them as an "network USB stick"
*  potential of latency since the volume uses the network to communicate
*  can be detached/attached from one instance to another quickly
*  size in GBs & IOPS will need to be stated at creation of volume
#### EBS - Delete on Termination Attribute
* controls EBS behavior when an EC2 instance terminates
  - by default, root EBS volume is deleted (attribute enabled)
  - by default, any other attached EBS volume is not deleted (attribute disabled)
* this can be controlled by the AWS console/ AWS CLI
##### Use Case
* preserve root volume when instance is terminated

### EBS Snapshots
* a backup of your EBS volume at a point in time
* not necessary to detach volume to create a snapshot but is recommened
* can copy snapshots across AZ or Region
### Features
#### EBS Snapshot Archive
* move a snapshot to an "achive tier" that is 75% chepaer
* takes 24-72 hours for restoring the archive
#### Recycle Bin
* setup rules to retain deleted snapshots fo you can recover them after an accidental deletion
* retnetion available is 1 day to 1 year
#### Fast Snapshot Restore (FSR)
* foce full initialization of snapshot to have no latency on the first use ($$$)

### AMI (Amazon Machine Image) Overview
* customization of an EC2 instance
  - you add your own software, configuration, OS, monitoring, etc
  - fater boot/configuration time becuase all software is pre-packaged
* are built for a specific region but can be copied across regions
### Types of AMIs
#### Public
* AWS provided 
#### Custom
* CYO
#### AWS Marketplace
* someone else made, potentially sells it
### AMI PRocess
* start an EC2 instance & customize it
* stop the instance (for data integrity)
* build an AMI - this will also create an EBS snapshot
* launch instances from this AMI
### EC2 Instance Store
* a drive that is directly tied to a physical drive on the server that instance is running on
* will have better I/O peformance compared to a EBS
* lose their storage if they are stopped (ephemeral)
* good for buffer/cache/scratch data/temp content
* risk of data loss if hardware fails
* backup & replicate regularly, is the user's responsibility

### EBS Volume Types
* EBS volumes are characterized in Size | Throughput | IOPS
* when in doubt always consult AWS documentation 
* only **gp2/3 and io1/2** can be used as boot volumes 
#### gp2/gp3 (SSD)
* general purpose SSD volume that balances price & performance for a wide variety of workloads
* used ofr boot volumes, virtual desktops. development & test environments
* 1 GiB - 16TiB
##### gp3
* newer version
* basline of 3K IOPS & throughput of 125MiB/s
* can increase IOPS upt o 16K & throughput up to 1K MiB/s indepentently
##### gp2
* older version
* small volumes can burst IOPS to 3K
* size of the volume & IOPS are linked, max IOPS is 16K
* 3 IOPS per GB, so at 5,334 GB we are at the max IOPS
#### io1/io2 / Provisioned IOPS (PIOPS) (SSD) 
* highest performance SSD volume for mission critical low latency or high-throughput workloads
* great for database workloads (sensitive to storage performance & consistenct)
* 4 GiB - 16 TiBs
* max IOPS is 64K for **Nitro EC2** & 32K for others
* can increase IOPS independently from storage size
##### io2
* has mnore durability & more IOPS per GiB at the same price as io1
* io2 has sub-millisecond latency
* max PIOPS of 256K with an **IOPS:GiB** ratio of **1K:1**
* supports EBS multi-attach
#### st1 (HDD)
* low cost HDD volume designed for frequently accessed, throughput intensive workloads
* 125GiB to 16TiB
* max throughput 500MiB/s
* max IOPS 500
#### sc1 (HDD)
* lowest cost HDD volume designed for less frequently accessed workloads
* max throughput 250 MiB/s
* max IOPS 250

### EBS Mutli-Attach
* allows you to attach the same EBS volume to multiple EC2 instances in the same AZ
* each instance has full read & write permissions to the volume
* up to **16 EC2** instances at a time
* must use a file system that's cluster aware not XFS, EXT4, etc
#### Use Case
* achieve higher application availability in clustered Linux applications (ex. Teredata)
* applications must manage concurrent write operations
### EBS Encryption
* data at rest is encrypted inside the volume
* all the dat in flight/moving between instance & the volume is encrypted
* all snapshots are encrypted
* all volumes created from a snapshot are encrypted
* encryption/decryption are handled transparently
* has minimal impact on latency
* EBS encryption leverages keys from KMS (AES-256)
* can encrypt an unencrypted volume
### Encrypting an unencrypted EBS Volume
* create an EBS snapshot of the desired volume
* encrypt the EBS snapshot
* create new EBS volume from the snapshot that will use encryption
* now attach the encrypted volume to the original instance
* 
### Amazon EFS (Elastic File System)
* managed NFS that can be mounted on many EC2
* EFS works with EC2 instances in multi-AZ
* highly available, scalable (automatically), expensive (3X gp2), pay per use
* used NFSv4.1 protocol internally
* uses security group to control access to share
* **only compatible with Linux based AMI**
* encryption at rest using KMS
* POSIX file system that has a standard file API
#### Use Cases
* Content Management
* Web Serving
* Data Sharing
* Wordpress
### Performance & Storage Classes
#### EFS Scale
* 1K of concurrent NFS clients, 10GB+/s throughput
* grow to petabyte-scale network file system, automatically
#### Perfomance Mode (set at creation)
##### Geneal Purpose (default)
* latency sensitive 
##### Max I/O
* higher latency, throughput, highly parallel
#### Throughput Mode
##### Bursting
* 1 TB = 50MiB/s + burst of up to 100MiB/s
###### Provisioned
* set your throughput regardless of storage size, 1 GiB/s for 1 TB storage
######  Elastic 
* automatically scales throughput up or down based on your workloads
  - up to 3GiB/s for reads & 1 GiB/s for writes
  - used for unpredictable workloads
#### Storage Classes
##### Standard
* for frequently accessed files
#####  Infrequent Access (EFS-IA)
* cost to retrive files, lower prove to store
  - enabled with Lifecycle Policy
#### Availability & Durability
##### Standard
* Multi-AZ, great for production
##### One Zone
* great for dev
* backup enabled by default
* compatible with IA


## Section 8: High Availability & Scalability: ELB & ASG
### High Availability & Scalability
* scalability mean that an application/system can handle greater loads by adapting
* 2 kinds of scalability: Vertical and Horizontal/Elasticity
* scalability is linked but different to High Availability
#### Vertical Scalability
* means the increasing the size of the instance
* moving from a t2.micro to t2.large
* very common for non distributed systems such as a database
* RDS/ElastiCach are services that can scale vertically
* usually a hardware limit to how much vertical scaling is available
#### Horizontal Scalability
* means increasing the number of instances/systems for your applications
* scaling implies distributed systems
* this is very common for web applications/modern applications
#### High Availability
* usually goes hand in hand with horizontal scaling
* means running your application/system in at least 2 data centers (AZ)
* goal is to survive a data center loss
### HA&S for EC2
#### Vertical Scaling
* scale up/down
* from t2.nano - .5G of RAM/1 vCPU to u-12tb1.metal - 12.3 TB of RAM/448 vCPUs
#### Horizontal Scaling
* scale out/in
* auto scaling group
#### High Availability
* auto scaling group in multi AZ
* load balancer in multi AZ

### Elastic Load Balancing (ELB) Overview
* server(s) that foward traffic to multiple servers downstream
* spread load across multiple downstream instances
* expose a single point of access (DNS) to your application
* seamlessly handle failures of downstream instances
* do regular health checks to your instances
* provide SSL termination for youe websites
* enforce stickiness with cookies
* high availability across zones
* seperate public traffic from private traffic
* is a managed load balancer
* AWS guarantees that it will be working
* AWS takes care of upgrades, maintenance, high availability
* AWS provides only a few configuration knobs
* intergrated with many AWS offering/services
#### Health Checks
* crucial for load balancers
* they enable the load balancer to know if instances it forwards traffic to are available to reply to requests
* is done on a port & route
* if response is **not 200**, then the instance is unhealthy
### Types of LB on AWS
* overall recommened to use the newer generation load balancers as they provide more features
* can be setup as internal/private or external/public
#### Classic LD - CLB
* supports HTTPS, HTTPS, TCP, SSL
* deprecated
#### Application Load Balancer - ALB
* supports HTTPS, HTTPS, WebSocket
#### Network Load Balancer - NLB
* supports TCP, TLS, UDP
#### Gateway Load Balancer - GWLB
* operates at layer 3 - IP Protocol
### LB Security Groups
* only allows users to access the load balancer through specified ports
* only allows traffic to your instances from your load balancer(s) on specified ports

### Application Load Balancer (ALB)
* layer 7 load balancer
* load balancing to multiple applications ascross machines (target groups)
* load balancing to multiple applications on the same machine (containers)
* support for HTTP/2 & WebSocket
* supports HTTPS redirect to HTTPS
* routing tables to different target groups
  - path in URL
  - hostname in URL
  - based on query string/headers
* ALB are great for micro services & container-based application (Docker & Amazon ECS)
* has port mapping feature to redirect to a dynamic port in ECS
#### Target Groups
* EC2 instances (can be managed by an Auto Scaling Group) - HTTP
* ECS taks (managed by ECS itself) - HTTP
* Lambda functions - HTTP request is translated into a JSON event
* IP Address - must be private IP
* ALB can route to multiple target groups
* health checks are conducted at the target group level
#### Good to Know
* fixed hostname (XXX.region.elb.amazonaws.com)
* the application servers don't see the IP of the client directly
  - the tru IP of the client is inserted in the header **X-Forwarded-For**
  - we can also get the Port (**X-Forwarded-Port**) and protocol ( **X-Forwarded-Port**)
* client connects to ALB via its public IP address 
* the ALB will perform a connection termination
* ALB connects directly to application instance with private IP address 


### Network Load Balancer (v2)
* works at layer 4 of the TCP/IP stack
* allows you to forward TCP & UDP traffic to your instances
* provides extreme performance for  TCP & UDP traffic
* able to handle millions of requests per second
* less latency ~100 ms (vs 400ms for ALB)
* **NLB has one static IP per AZ** and supports assigning Elastic IP
  - helpful for whitelisting specific IPs
* not included in the AWS free tier
#### Target Groups
* can be EC2 instances
* can specific **_Private_** IPs only
  - can be useful to front private servers in your physical data center
* ALB
* Health Checks support **_TCP, HTTP, HTTPS Protocols_**


### Gateway Load Balancer
* deploy, scale, & manage a fleet of 3rd part network virtual appliances in AWS
* i.e. firewalls, IDS/IPS, payload manipulation
* operates at layer 3 of the TCP/IP model
* **Transparent Network Gateway** - single entry/exit for all traffic
* **Load Balancer** - distributes traffic to your virtual appliances
* uses the **GENEVE** protocol on port **6081**
#### Target Groups
* EC2 instances
* Private IP Addresses

### ELB - Sticky Sessions (Session Affinity)
* it is possible to implentment stickiness so that the same client is always directed to the same instance behind a load balancer
* works with CLB (depricated), ALB, & NLB
* uses a cookie that has an expiration date that you can control
* heplful to ensure that a user doesn't lose session data
* may bring embalance to the load over the backedn EC2 instances
### Cookie Names
#### Application-based Cookie
* Custom cookie
  - generated by target
  - can include any custom attributes required by the application
  - name must be unique for each target group
  - **CANNOT** be used with **AWSALB, AWSALBAPP, or AWSALBTG**
#### Duration-bassed Cookies
* cookie generated by the load balancer
* cookie name is **AWSALB** for **ALB**/**AWSELB** for **CLB**
* expiration is determined by load balancer

### Cross-Zone Load Balancing
* with this enabled each load balancer instance distributes evenly across all registered instances in all AZ's
* without this enabled each load balancer instance distributes evenly within its node
#### Application Load Balancer
* cross-zone load balancing enabled by default (can be disabled at the Target Group Level)
* no charges fro inter- AZ data
#### NLB & GLB
* cross-zone load balancing disabled by default
* will incur charges for this service if enabled

### ELB - SSL/TLS Cetificates Basics
* SSL Certificate allows traffic between your clients & your load balancer to be encrypted in transit
* **SSL** refers to Secure Sockets Layer, used to encrypt connections
* **TLS** refers to Transport Layer Security, which is newer version
* TLS certs are mainly used but are still refered to as SSL
* Public SSL Certificates are issued by **Certificate Authorities (CA)**
* SSL Certificates have an expiration date that you set and must be renewed
### Load Balancer - SSL Certificate
* uses an X.509 certificate
* can use **ACM (AWS Certificate Manager)** to manage certificates
* you can create and upload your own certificates
#### HTTPS Listener
* you must specify a default certificate
* you can add an optional list of certificates to support multiple domains
* clients can use **SNI (Server Name Indication)** to specify the hostname they reach
* ability to specify a security policy to support older version of SSL/TLS
### SSL - Server Name Indication
* solves the problem of loading multiple SSL certificates onto one web sever (allows you to serve multiple websited)
* newer protocol that requires the client to _indicate_ the hostname of the target server in the intial SSL handshake
* the server will then find the correct certificate or return the default certificate
* only works for **ALB & NLB** or **CloudFront**
#### CLB (v1)
* supports only **ONE** SSL certificate
* must use multiple CLB's for multiple hostnames with multiple SSL certificates
#### ALB (v2)
* supports multiple listeners with multiple SSL certificates
* uses SNI to support this feature
#### NLB (v2)
* supports multiple listeners with multiple SSL certificates
* uses SNI to support this feature

### ELB - Connection Draining
* Connection Draining - for CLB
* Deregistration Delay - ALB & NLB
* time to complete "in-flight requests" while the instance is de-registering or unhealthy
* stops sending new requests to the EC2 instance which is de-registering
* can set this time out between 1 - 3600 seconds (1hr)
  - default time: 300 seconds (5 mins)
























