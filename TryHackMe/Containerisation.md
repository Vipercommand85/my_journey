## Task 2: What is Containerisation

**Containerisation**
: process of packaging an application and necessary resource (ie. libraries/packages) required into one package named a container allowing for the isolation of applications from one another
  * this isolation is only isolationg the applocation's environment
  * applications interact with the containerisation engine (ie. Docker Engine) and not the actual physical hardware
  * this containerisation sits on top of the **Host OS**
 **Namespace**
 : kernel feature that allows a process to access resources of the host OS without being able to interact with other processes
 
 **What is the name of the kernel feature that allows for processes to use resources of the OS without being able to interact with other processes?**
 ```
 namespace
 ```
 **In a normal configuration, can other containers interact with each other?**
 ```
 nay
 ```
 
 ## Task 3: Introducing Docker
 
  * can be run Linux,Windows, and MacOS
  * creates *__images/applications__* that can be deployed, managed, and shared with ease
  * **Docker Engine** is essentially an API that runs on the host OS, which communicates between host OS hardware and containers
  * can connect containers together (ie. web server and database server)
  * export/import *__applications/images__*
  * transfer files between OS and container
  * use **YAML** to allow developers to instruct how a container should be built and what is run in that container

**What does an application become when it is published using Docker?**
```
images
```

**What is the abbreviation of the programming syntax language that Docker uses?**
```
YAML
```

## Task 4: History of Docker

  * created by Solomon Hykes in 2013
  * was started as an internal project for dotCloud (PaaS)

**In what year was Docker orignally created?**
```
2013
```
**Where was Docker first showcased?**
```
PyCon
```
**what version of Unix had the first concepts of containerisation?**
```
V7
```

## Task 5: The Benefits & Features of Docker

