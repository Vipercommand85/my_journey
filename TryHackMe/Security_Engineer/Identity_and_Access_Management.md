## Task 1: Introduction
### What room should you complete before this room?
```bash
Security Priciples
```

## Task 2: IAAA Model
* Identification, Authentication, Authorisation, Accountability are four pillars of information security
* **Identification**: the process of verifying who the user/entity is
* **Authentication**: the process of ensuring that the user is who they claim to be
* **Authorisation**": the process of determining what the user is allowed to access
* **Accountability**: tracks the user to ensure that they are responsible for their actions
* by implenting this model, organizations can help to mitgate any sensitive data from being released to the public

### You are granted access to read & write emails. What is the name of this process?
```
Authorisation
```
### What process would require you to enter you username?
```bash
Identification
```
### Although you have write access, you should only make changes if necessary for the task. Whihc process is used to enforce this policy?
```bash
Accountability
```

## Task 3: Identification
* is how a user/process/system claims a specific identity

### Which cannot be used for identification?
```bash
Year of Birth
```
### Which of the following cannot be used for identification?
```bash
Street Number
```

## Task 4:  Authentication
* is the process of verifying the identity of a user/system
* during the identification, the user/system claims a specific(unique) identity in the respective setting
* this identity is then authenticated through on or more of the following ways
    1. Something you know
    2. Something you have
    3. Something you are

* 2 lesser used methods are
    4. Somewhere you are (logical/physical location)
    5. Something you do (behaviour)

### Multi-Factor Authentication (MFA)
* refers to using 2 or more of the aboved mechisms
* the purpose is to have additional security in case one authenticaion mechanism is compromised

### When you want to check your email, you enter your username and password. What kind of authentication is your email provider using?
```bash
Something you know
```
### You can log into a banking app using a username & password. You then receive a code on your cell phone that must be entered on the login screen, what kind of authentication is being used?
```bash
Multi-Factor Authentication
```
### You call your home phone and enter a secret number to listen to recorded messages, what kind of authentication is being used?
```bash
Something you know
```
### In order to use the elevator at a secure facility, you need to swipe your ID badge and enter a 4 digit pin. What kind of authentication is being used?
```bash
Mulit-Factor Authentication
```


## Task 5: Authorisation & Access Control
* **Authorisation** specifies what the **Authenticated** user is allowed to access and/or do
* **Access Control** mechanisms should ensure that the proper **Authorisation** is enforced

### The new policy states that the secretary should be able to send an email on the manager's behalf, what is this policy dictating?
```bash
Authorisation
```

### You shared a document with your colleague & gave them view permissions without making changes.
### What would ensure that your file won't change?
```bash
Access Control
```

### The hotel management decided that the cleaning staff needed access to all the hotel rooms to do their work, what phase is this decision part of?
```bash
Authorisation
```

## Task 6: Accountability & Logging
* **Accountability** ensures that users are accountable for the actions they perform on a system
* **Logging** is the processs of recording events that occur within a system
* **Logging** is a critical aspect of accountability
* these records of user actions is vital for regulatory compliance, incident reponse, & forensic investigations
* also helps organisations detect & respond to security incidents
* **Logging** servers should be on a seperate network & should be receive logs for other end points in the environment
* **Log Forwarding** is the process of sending log data from one system to another
* this log server(s) should be securely managed and protected

## Security Information & Event Management (SIEM)
* is a technology that aggregates log data from multiple sources & analyses the data collected for signs of security threats
* allows organisations to better understand their systems & network which helps security teams to identify anomalies, detect potnetial security incidents, & provide alers

## Task 7: Identity Management (IdM)
* refers to the process of managinf & controlling digital identities
* includes all the necessary policies & technologies for identification, authentication, & authorisation
* the main goal is to ensure that only authorzied individuals have access to specific resources & information while those that are not authorised are denied access

## Identity & Access Management (IAM)
* encompasses all the processes & technologies to manage & secure digital identities & access rights
* includes such functions as user provisioning, access control, identity governacne, & compliance management
* all authorized user's access is monitored and controlled

### What does IdM stand for?
```bash
Identity Management
```
### What does IAM stand for?
```bash
Identity & Access Management
```


## Taks 8: Attacks Against Authentication
### Authentication in the Digital World
* **Replay Attack** is an authentication attack when an adversay captures an authentication stream of packets and resends the credentials as their own

## Making the Challenge Response Unique
* one approach would be to use the current time & date as part f the repsonse
* both parties would need to synchronise their clocks
* reponse would only be valid for a breif time, usually in milliseconds

### What is the name of the attack in which an attacker could authenticate using the user's repsonse to an authentication protocol?
```bash
Replay Attack
```


## Task 9: Access COntrol Models (DAC)
### Discretionary Access Control
* owner of a resource will explicitly add users with the proper permissions

### Role-Baded Access Control (RBAC)
* user's access is based on the role they hold
* mamaging user access in this way is much simpler as a user only needs to be added or removed from a groups based on their role

### Mandatory Access Control (MAC)
* is a situation where user's are given different levels of access
* are used on systems with a specific purpose or to handle classified data
* **AppArmor** & **SELinux** are 2 types that are available on different Linux distros

### What kind of access control are you utilizing if you are sharing a document via a network share & give edit permissions only accounting?
```bash
Role-Based Access Control
```

### What kind of access control are you utilizing if you specifically only allow 3 out of 300 friends see a post on social media?
```
Discretionary Access Control
```

## Task 10: Single Sign-On (SSO)
* **Single Sign-On** allows users to authenticate to one system that will then grant them access to other systems/resources
* this type of authentications provides the following:
    1. **One Strong Password**: allows users to create a single strong secure password
    2. **Easier MFA**: adding MFA to very service would be a diffcult task to secure
    3. **Simpler Support**: password resets become more straight foward and quicker
    4. **Efficiency** users do not need to log in every time they need to access a new service

### What does SSO Stand for?
```bash
Single Sign-On
```

### Does SS simplify MFA use as it need to be set up only once?
```bash
Yay
```




































