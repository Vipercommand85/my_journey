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

#### IAM Policies

#### IAM Policies Hands On

#### IAM MFA Overview

#### IAM MFA Hands On

#### AWS Access Keys, CLI, SDK

#### AWS CLI Setup on Windows

#### AWS CLI Setup on Mac OS X

#### AWS CLI Setup on Linux

#### AWS CLI Hands On

#### AWS CloudShell: Region Availability

#### AWS CloudShell

#### IAM Roles for AWS Service

#### IAM Roles Hands On

#### IAM Security Tools

#### IAM Security Tools Hands On

#### IAM Best Practices

#### IAM Summary


































