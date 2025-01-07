## Task 2: Understanding APIs - A refresher
* **API (Application Programming Interface)** is a middleware that facilitates the communication of two software components utilising a set of protocols & definitions
* API documentation contains all the information on how developers have structured those responses & request
* **API is a building block for developing complex & enterprise-level applications**

### Recent Data Breaches through APIs
* **LinkedIn**: In June 2021, data of over 700 million LinkedIn users were offered for sale on on of the dark web forums, which was scraped by exploiting the **LinkedIn API**
  * a sample of 1 million records to confirm the legitimacy of the **LinkedIn** breach was published
* **Twitter** in June 2022, data of more than 5.4 million **Twitter** users was released for sale on the dark web by exploiting a **zero-day** in the **Twitter** API
* **PIXLR**: In January 2021, **PIXLR** suffered a data breach that impacted around 1.9 million users

#### In the LinkedIn breach (June 2021), how many million records (sample) were posted by a hacker on the dark web?
```
1
```

#### Is the API documentation a trivial item & not used after API development?
```
nay
```


## Task 3: Vulnerability I - Broken Object Level Authorisation (BOLA)
### How does it Happen?
* **BOLA** refers to IDOR, which creates a scenario where the user uses the **input functionality & gets access to the resources they are not authorised to access**
* in an API, such controls are usually implemented through programming in Models (Model-View-Controller Architecture) at the code level 

### Likely Impact 
* unauthorised object access can lead to data leakage and in some cases complete account takeover

![image](https://github.com/user-attachments/assets/1f3af24b-50cb-4ed4-b635-b4bc1c59fcc2)

* in the above image, the endpoint is not validating any incoming API calls to confirm whether the request is valid or the user requesting the information is authorized for view the returned information
* the solution is to implement an authorisation mechanism through which an identity can be verified
* this could be an **access token or authorisation token**

![image](https://github.com/user-attachments/assets/c8a55ddb-d5d6-4c7e-855d-7b50aaade013)


#### Waht is the total number of employess in the company?
```
3
```

#### What is the flag associated with employee ID 2?
```
THM{838123}
```

#### What is the username of employee ID 3?
```
Bob
```



## Task 4: Vulnerability II - Broken User Authentication (BUA)

### How does it happen?
* reflects a scenario where an API endpoint allows an attacker to access a database or acquire a higher privilege than the existing one
* **Invalid Implementation of Authentication** is the primary reason behind this vulnerability
 * i.e. using incorrect email/password combination, absence of security mechanisms like authorization headers, tokens, etc.
* this can lead to data leaks, deletion, modification, or even the complete account takeover by an attacker

![image](https://github.com/user-attachments/assets/f69a2d0a-cc60-49c0-8de0-e7e4fd2c5dba)


![image](https://github.com/user-attachments/assets/9818c719-03c3-4480-817a-e35202493284)


### Mitigation Measures 
* Ensure complex passwords with higher entropy for end users.
* Do not expose sensitive credentials in GET or POST requests.
* Enable strong JSON Web Tokens (JWT), authorisation headers etc.
* Ensure the implementation of multifactor authentication (where possible), account lockout, or a captcha system to mitigate brute force against particular users. 
* Ensure that passwords are not saved in plain text in the database to avoid further account takeover by the attacker. 

#### Can you find the token of hr@mhnt.com?
```
cOC%Aonyis%H)mZ&uJkuI?_W#4&m>Y
```

#### To which country does sales@mht.com belong?
```
China
```

#### Is it good practice to send a username & password in a Get request?
```
nay
```


## Task 5: Vulnerability III - Excessive Data Exposure
### How does it happen?
* occurs when applications tend to **disclose more than desired information** to a user through an API response
* the filtration task is left to the front-end developer before it is displated to the user
* runtime detection tools or the general security scanning tools can give an alert on this kinf of vulnerability

![image](https://github.com/user-attachments/assets/302c146b-8de8-4259-bb5b-72de5ea3e61d)


![image](https://github.com/user-attachments/assets/320e0f77-352d-4180-acf9-4d807ce763d3)


### Mitigation Measures 
* Never leave sensitive data filtration tasks to the front-end developer. 
* Ensure time-to-time review of the response from the API to guarantee it returns only legitimate data and checks if it poses any security issue. 
* Avoid using generic methods such as to_string() and to_json(). 
* Use API endpoint testing through various test cases and verify through automated and manual tests if the API leaks additional data.


#### What is the device ID value for post-ID 2?
```
iOS15.411
```

#### What is the username value for post-ID 3?
```
hacker#!
```

### Should we use network-level devices for controlling excessive data exposure instead of managing it through APIs?
```
nay
```


## Task 6: Vulnerability IV - Lack of Resources & Rate Limiting
### How does it happen?
* means that **APIs do not enforce any restriction** on the frequency of clients' requested resources or the files' size
* this can lead to poor performance if not DoS of the API

![image](https://github.com/user-attachments/assets/8a894967-bd44-4afa-a25d-345a9d422af7)

![image](https://github.com/user-attachments/assets/2883321d-8c1e-4de5-8a77-0c7b1b38cbe3)

### Mitigation Measures 
* Ensure using a captcha to avoid requests from automated scripts and bots.
* Ensure implementation of a limit, i.e., how often a client can call an API within a specified time and notify instantly when the limit is exceeded. 
* Ensure to define the maximum data size on all parameters and payloads, i.e., max string length and max number of array elements.


#### Can rate limiting be carried out at the network level through firewall, etc.?
```
yea
```

#### What is the HTTP response code when you send a POST request to /apirule/sendOPT_s using the email address hr@mht.com?
```
200
```

#### What is the "msg key" value after an HTTP POST request to /apirule/sendOPT_s using the email address sales@mht.com?
```
Invalid Email
```


## Task 7: Vulnerability V - Broken Function Level Authorization
### How does it happen?
* reflects a scanrio where a low privileged user bypasses system checks to gain access to **confidential data by impersonating a high privileged user (Admin)**
* **BFLA** relects **IDOR** permission, where a user can perform administrative-level tasks
* APIs with complex user roles & permissions that can span the hieracrchy are more prone to this attack

![image](https://github.com/user-attachments/assets/4d9943c7-136a-4afd-a7d4-83ca3c274b0d)


![image](https://github.com/user-attachments/assets/47f8b6ff-b31e-454f-b7bd-1e85da20eb3f)


### Mitigation Measures 
* Ensure proper design and testing of all authorisation systems and deny all access by default. 
* Ensure that the operations are only allowed to the users belonging to the authorised group. 
* Make sure to review API endpoints against flaws regarding functional level authorisation and keep in mind the apps and group hierarchy's business logic.


#### What is the mobile number for the username Alice?
```
+1235322323
```

#### Is it a good practice to send is:Admin value through the hidden fields in form requests?
```
nay
```

#### What is the address flag of username admin?
```
THM{3432$@#2!}
```
