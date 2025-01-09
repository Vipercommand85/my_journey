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




























