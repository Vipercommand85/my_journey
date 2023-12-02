## Connecting an AWS EC2 instance to Microsoft Sentinel
* IAM ==> Roles ==> Create Role
* Select AWS Account ==> Another AWS Account
* Account ID: ID from Sentinel Workspace
* External ID: External ID from Sentinel Workspace
* add CloudTrail Read Only permissions to the new AWS Account
* add the ARN of AWS EC2 Account to the Sentinel Workspace
* 
