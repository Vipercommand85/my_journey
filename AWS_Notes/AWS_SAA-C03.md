# UDEMY - Stephane Maarek: AWS Certified Solutions Architect Associate Course 
## Getting Started with AWS
### Section 3: AWS Cloud Overview - Regions & AZ
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

### Section 4: IAM & AWS CLI
#### IAM Introduction: Users, Groups, Policies
* IAM = Identity & Access Management, Global service
* root account created by default, shouldn't be used or shared
* Users are people within your organization, can be grouped
* Groups can only contain users, not other groups
* User's do not have to belong to a group; user can belong to multiple groups
#### IAM Permissions
* users or groups can be assinged **JSON** documents called policies
* these policies define the permissions of the users
* apply **least privilege principle**: only give a user enough permissions to effectively peform their duties

#### IAM Users & Groups Hands On
* good practice to create admin user instead of using root account user
##### User Details (admin account user)
* username
* create an IM user
* autogenerate/create custom password
* add user to a group if it already exist or create a new group; can also add a policy directly to the user
  - admin group
  - one policy attached (**AdministratorAccess**)
* Review settings and add tags before creating user and group

#### IAM Policies
##### Inline Policy
* this type of policy is only attached to a single user
##### IAM Policies Structure
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
#### IAM MFA Overview
##### Password Policy
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
#### Multi Factor Authentication - MFA
* combination of a password *you know* + security device *you own*
##### Virtual MFA device
* Google Authenticator used for a single device (phone)
* Authy used for multiple devices
* Authy has support for mutiple tokens on a single device
##### Universal 2nd Factor (U2F) Security Key
* YubiKey by Yubico (3rd Party)
* supports multiple users/accounts with a single security key
##### Hardware Key Fob MFA Device
* provided by Gemalto (3rd party)
##### Hardware Key Fob MFA Device for AWS GovCloud(US)
* provided by SecurePassID (3rd Party)

#### IAM MFA Hands On
##### Setting MFA for Root User
* under username drop down menu select security credentials
  - must be logged in as root user
* 
#### AWS Access Keys, CLI, SDK
##### Access Options
* AWS Management Console (protected by password + MFA)
* AWS CLI: protect by access keys
* AWS SDK: for code and is also protected by access keys
* access keys are generated through the AWS Console
* users manage their own access keys
* **Access Keys are secret, just like a password. DO NOT SHARE THEM**
* Access Key ID ~/= username
* Secret Access Key ~/= password
#### AWS CLI
* enables you to interact with AWS services using commands in your command-line shell
* direct access to the public APIs of AWS services
* can develop scripts to manage your resources
* alternative to using AWS Management Console
#### AWS SDK
* language specific APIs (set of libraries)
* enables you to access & manage AWS services programmatically
* embedded within your application
* supports many languages

#### AWS CLI Setup on Windows
* install version 2
* update/upgrade but redownloading the same link and running the installer wizard

#### AWS CLI Setup on Mac OS X
* install version 2
* update/upgrade but redownloading the same link and running the installer wizard

#### AWS CLI Setup on Linux
* see AWS documentation

#### AWS CLI Hands On
* generate access based on desired fuctionality
* in a terminal enter **aws configure** to set up the AWS CLI
* make sure you have your AWS Access Key ID and Secret Access Key available
* you can choose the default region as desired

#### IAM Roles for AWS Service
* some AWS services will need to perform actions on our behalf
* to acheive this, create **IAM Roles** with specific permissions to the desired AWS services
##### Common Roles
* EC2 Instance Roles
* Lambda Function Roles
* Roles for CloudFormation

#### IAM Security Tools
##### IAM Credentials Report (account-level)
* a report that lists all your account's users and the status of their various credentials
##### IAM Access Advisor (ucer-level)
* shows the service permissions granted to a user and when those services were last accessed

#### IAM Best Practices
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


































