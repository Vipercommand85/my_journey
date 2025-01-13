# OWASP API SECURITY TOP 10 - 2

## Task 2: Vulnerability VI - Mass Assignment
### How does it happen?
* reflects a scenario where **client-sdie data is automatically bound with server-side objects or class variables**
* threat actors must first understand the **application's business logic**
* will send specially crafted data to the server, acquiring administrative access or inserting tampered data
* widely exploited in latest frameworks like **Laravel, Code Ignitor**

### Likely Impact
* may result in **data tampering & privilege escalation** from a regular user to an administrator

![image](https://github.com/user-attachments/assets/689f807a-471a-42bd-9357-d513881f36bd)

![image](https://github.com/user-attachments/assets/ee93803d-90ca-4bd1-9558-2344aba56325)

* there is no filtering is being done on the server side
* since using the **mass assignment feature**, credit values are also being inserted in the database


### Mitigation Measures 
* Before using any framework, one must study how the backend insertions and updates are carried out. In the Laravel framework, fillable and guarded arrays mitigate the above-mentioned scenarios. 
* Avoid using functions that bind an input from a client to code variables automatically.
* Allowlist those properties only that need to get updated from the client side.



#### Is it a good practice to blindly insert/update user-provided data in the database?
```
nay
```

#### What should the returned credit value be for new users?
```
50
```


## Task 3: Vulnerability VII - Security Misconfiguration
### How does it happen?
* when **security controls are implemented incorrectly or poorly**
* this includes factors such as improper/incomplete default configuration, publically accessible cloud storage, **CORS (Cross-Origin Resource Shaing)**, & error messages displayed with sensitive data
* are usually detected by vulnerability scanners or auditing tools
* API documentation, list of endpoints, error logs, etc. **must not be publically accessible**

### Likely Impact
* can give intruders complete knowledge of API components
* allows threat actors to bypass security mechanisms
* **Stack trace or other detailed errors** can provide threat actors access to confidential data & essential system details

![image](https://github.com/user-attachments/assets/0976be3c-354d-422c-8e59-abf6e28b9cdb)

* in an unsuccessful call, the server sends a complete stack trace in response, containing function names, controller & route information, file path, etc.

![image](https://github.com/user-attachments/assets/6dc6abcf-9502-4e9b-a17a-4a1a232f27d8)

### Mitigation Measures 
* Limit access to the administrative interfaces for authorised users and disable them for other users. 
* Disable default usernames and passwords for public-facing devices (routers, Web Application Firewall etc.).
* Disable directory listing and set proper permissions for every file and folder. 
* Remove unnecessary pieces of code snippets, error logs etc. and turn off debugging while the code is in production.


#### Is it an excellent approach to show error logs from the stack trace to general visitors?
```
nay
```

#### What is the HTTP response code from using /apirule7/ping_s API call?
```
500
```

#### What is the Error ID number in the HTTP response message?
```
1401
```



## Task 4: Vulnerability VIII - Injection
### How does it happend?
* occurs when user input is **not filtered & is directly proccessed by an API**
* may come from SQL, OS commands, XML, etc.
* frameworks offer functionality to protect against this attack through automatic sanitisation of data
* applications built in custom frameworks, like core PHP, are still susceptible to such an attack

### Likely Impact
* may lead to **information disclosure, data loss, DoS, & complete account takeover**
* may allow threat actors access sensitive data or even create new functionality & perform **RCE**


![image](https://github.com/user-attachments/assets/a65e6a5c-45cf-4034-8fb1-db6b03dfc2c7)


![image](https://github.com/user-attachments/assets/2f5ac517-a8c4-4072-9fe5-0a83e29bc6c7)


### Mitigation Measures
* Ensure to use a well-known library for client-side input validation.
* If a framework is not used, all client-provided data must be validated first and then filtered and sanitised. 
* Add necessary security rules to the Web Application Firewall (WAF). Most of the time, injection flaws can be mitigated at the network level.
* Make use of built-in filters in frameworks like Laravel, Code Ignitor etc., to validate and filter data. 


#### Can injection attacks be carried out to extract data from the database?
```
yea
```

#### Can injection attacks result in remote code execution?
```
yea
```

#### What is the HTTP response code if a user enters an invalid username & password?
```
403
```



## Task 5: Vulnerability IX - Improper Asset Management
### How does it happen?
* reflects a scenario where we have **two versions of an API available in our system**
* it is likely that an older version of an API has vulnerabilities that can be exploited by a threat actor

### Likely Impact
* the older version of an API can allow threat actors to gain unauthorized access to confidential data or even complete control of the system


![image](https://github.com/user-attachments/assets/ddb9d95c-2dac-4943-8a80-3310df7e628f)


![image](https://github.com/user-attachments/assets/4332a149-52cc-47d6-ab3d-15bce8d02db5)


### Mitigation Measures 
* Access to previously developed sensitive and deprecated API calls must be blocked at the network level.
* APIs developed for R&D, QA, production etc., must be segregated and hosted on separate servers.
* Ensure documentation of all API aspects, including authentication, redirects, errors, CORS policy, and rate limiting. 
* Adopt open standards to generate documentation automatically.


#### Is it good practice to host all APIs on the same server?
```
nay
```

#### What is the amount of balance associated with user Alice after making a call to /apirule9/v1/user/login?
```
100
```

#### What is the country code of the iser Alice?
```
USA
```



## Task 6: Vulnerability X - Insufficient Logging & Monitoring
### How does it happen?
* reflects a scenario when an attacker conducts malicious activity on your server but **there is not enough evidence available due to the absence of logging & monitoring machansims**
* infratustructure logging is not enough, there needs to be API logging & monitoring as well
* info like **visitor's IP address, endpoint accessed, input data, etc. all with timestamps** should be collected
* this data should be passed to a **SIEM solution** for detailed analysis and correlated

### Likely Impact
* inability to identify threat actor's activity or existence in the environment

![image](https://github.com/user-attachments/assets/c1783adc-9eb9-4454-8ab7-c44ff8e2e00a)


### Mitigation Measures 
* Ensure use of the Security Information and Event Management (SIEM) system for log management. 
* Keep track of all denied accesses, failed authentication attempts, and input validation errors, using a format imported by SIEM and enough detail to identify the intruder.
* Handle logs as sensitive data and ensure their integrity at rest and transit. Moreover, implement custom alerts to detect suspicious activities as well. 



#### Should an API logs be publically accessible so that a threat actor must know they are being logged?
```
nay
```

#### What is the HTTP response code in case of successful logging of user information?
```
200
```
