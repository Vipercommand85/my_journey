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
