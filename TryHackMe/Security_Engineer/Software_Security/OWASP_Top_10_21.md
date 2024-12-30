# OWASP Top 10 2021
## Task 1: Introduction
### this room will cover the following vulnerabilities as outlined by the 2021 OWASP documentation
* Broken Access Control
* Cryptographic Failures
* Injection
* Insecure Design
* Security Misconfiguration
* Vulnerabilities & Outdated Components
* Identification & Authentication Failures
* Software & Data Integrity Failures
* Security Logging & Monitoring Failures
* Server-Side Request Forgery (SSRF)

## Task 3: Broken Access Control
* is when a website visitor can access protected pages meant for non-regular visitors
* this can lead to a user being able to view sensitive information from other users
* as well as accessing unauthorized functionality
* **Authorisation** is bypassed

## Task 4: Broken Access Control (Insecure Direct Object Reference/IDOR Challenge)
* refers to an access control vulnerability where a user can access resources that they wouldn't/shouldn't normally be able to access
```bash
https://bank.thm/account?id=1111
```

* while being logged in as user **jclark** with account number **1111** is a normal string using the user's id to access their account information

```
https://bank.thm/account?id=2222
```
* if the user **jclark** could access this account number, this would be an example of an **IDOR**

### Look at other users' notes, what is the flag?
```
looking at user 0

flag{fivefourthree}
```

## Task 5: Cryptographic Failures
* refers to any vulnerability arising from the misuse ( or lack of use) of cryptographic algorithms for protecting sensitive information
* often end up allowing web apps to divulge sensitive information
* as an example, take a secure email application:
  * you want the communication between you & the server to be encrypted, this is **encrypting data in transit**
  * since email servers store your emails that haven't been deleted, you will also want to be sure that your email provider cannot read your emails, this is **encrypting data at rest**
* taking advantage of these vulnerabilities often involves using a **MiTM** technique

## Task 8: Cryptographic Failures (Challenge)

### What is the name of the mentioned directory?
* first you will need to look in the source code of the main page
```
/assets
```

### What file stand out as being likely to contain sensitive data after accessing the above directory?

```
webapp.db
```

### What is the password hash of the admin user?
```
6eea9b7ef19179a06954edd0f6c05ceb
```

### What is the plaintext password?

```
qwertyuiop
```

### What is the flag after logging in as the admin user?
```
THM{Yzc2YjdkMjE5N2VjMzNhOTE3NjdiMjdl}
```

## Task 9: Injection
* **Injection flaws** occur because the application interprets user-controlled input as commands or parameters
* **SQL Injection** occurs when user-controlled input is passed to **SQL** queries
  * this could potentially allow the threat actor to access, modify, & delete information that they shouldn't have access to 
  * **Command Injection** occurs when user input is passed to system commands allowing a threat actor to execute arbitrary commands on application servers 
* main defence for preventing injection attacks is ensuring that user-controlled input is sanitized
  * **Using an allow list** is when input is compated to a list of safe inputs or characters
  * **Stripping Input** inspects the user input has only approved characters and any that are not approved are removed

## Task 10: Command Injection
* **Command Injection** occurs when server-side code (i.e. PHP) in a web application makes a call to a function that interacts with the server's console directly
* this would allows threat actors to list files, read their contents, run some basic commands to do some recon

### Code example
```bash
<?php
    if (isset($_GET["mooing"])) {
        $mooing = $_GET["mooing"];
        $cow = 'default';

        if(isset($_GET["cow"]))
            $cow = $_GET["cow"];
        
        passthru("perl /usr/bin/cowsay -f $cow $mooing");
    }
?>
```
* the above code does the following:

  * Checking if the parameter "mooing" is set. If it is, the variable $mooing gets what was passed into the input field.
  * Checking if the parameter "cow" is set. If it is, the variable $cow gets what was passed through the parameter.
  * The program then executes the function passthru("perl /usr/bin/cowsay -f $cow $mooing");

### Exploiting Command Injection

![image](https://github.com/user-attachments/assets/7882880e-a73a-496d-9542-378d9b8f20d3)

![image](https://github.com/user-attachments/assets/4f6f1b6f-a023-4927-bf9c-6187a1665829)


#### What strange text file is in the website's root directory?
```
use the command ls -a to that you can see the files in the current directory

drpepper.txt 
```

#### How many non-root/non-service/non-daemon users are there?
```
use cd ../etc/ && cat /etc/passwd command

0 users of that kind
```

#### What user is the app running as?
```
use whoami command

apache
```

#### What is the user's shell set as?
```
use the same base code as question 2 but add '| grep apache'

/sbin/nologin
```

#### What version of Alpine Linux is running?
```
use cd ../etc/ && cat /etc/alpine-release

3.16.0
```


## Task 11: Insecure Design

### Insecure Design
* refers to vulnerabilities which are inherent to the application's architecture
* the idea of the whole or part of the application is flawed from the start
* can occur from various reason

### Insecure Password Resets
* A good example of such vulnerabilities occurred on Instagram a while ago, which allowed users to reset their forgotten passwords by sending them a 6-digit code to their mobile number via SMS for validation
* If an attacker wanted to access a victim's account, he could try to brute-force the 6-digit code.
* this was not directly possible as Instagram had rate-limiting implemented so that after 250 attempts, the user would be blocked from trying further. 
* However, it was found that the rate-limiting only applied to code attempts made from the same IP 


#### What is the value of the flag in joseph's account?
```
use forgot password link and select the favorite color question, asnwer is green

THM{Not_3ven_c4tz_c0uld_sav3_U!}
```

## Task 12: Security Misconfiguration

### Security Misconfiguration
* are distinct from the other top 10 vulnerabilities because they occur when security could have been appropriately configured but was
* security misconfigurations include:
  * poorly configured permission on cloud service, like S3 buckets
  * having unnecessary features enabled, like services, pages, accounts or privileges
  * default accounts with unchanged passwords
  * error messages that are overly detailed & allow threat actors to more information about the system
  * not using [HTTP security headers](https://owasp.org/www-project-secure-headers/)

### Debugging Interfaces
* a common security misconfiguration concerns the exposure of debugging features in prodcution Software


#### Navigate to http://[IP ADDRESS GIVEN]/console
* run the following command
```
import os; print(os.popen("ls -l").read())
```

#### What is the database file name in the current directory?
```
todo.db 
```

#### Modify the permissions on app.py file to retrieve the flag.
```
use 'import os; print(os.popen("chmod 777 app.py && cat app.py").read())'

THM{Just_a_tiny_misconfiguration}
```

## Task 13: Vulnerable & Outdated Components
```
```
```
```
```
```
```
```
```
```
```
```
```
```
```

```
```
```
```
```
```
```
```
```
```
