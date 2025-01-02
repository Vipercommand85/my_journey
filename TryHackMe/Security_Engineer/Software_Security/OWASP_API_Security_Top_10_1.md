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

```
```
```
