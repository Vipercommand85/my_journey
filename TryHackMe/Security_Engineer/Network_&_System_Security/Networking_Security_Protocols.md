# Network Security Protocols
## Task 1: Introduction
### Learning Objectives
* primary protocols essential for network security at each OSI model layer

## Task 2: Application Layer
### HTTPS Protocol
#### Technical Overview - HTTPS
* **Hypertext Transfer Protocol Secure (HTTPS)** is a client-server protocol that is responsible for securely sending data between a web server (webiste) & a browser (client-side)
* is an ecrypted variant of **HTTP**

#### Workflow - HTTPS
* uses the unecrypted HTTP and adds a layer of encryption with **SSL/TLS**

#### Request & Response - HTTP

![image](https://github.com/user-attachments/assets/55f2a946-ab0a-4b56-994f-2edbf983b70c)

#### Request & Response - HTTPS

![image](https://github.com/user-attachments/assets/b7dd87e7-25be-42c1-a3e0-c54cf44cf78b)

### FTPS Protocol
#### Technical Overview - FTPS
* **File Transfer Protocol Secure (FTPS)** is a communication protocol which is a refined & secure version of FTP
* designed as a client-server model
* seperate control/command & data connections between a client & server are used along with a **username** & **password**

#### Workflow
* **FTPS** is an extension of FTP & adds encryption bia **TLS**

#### Request & Response - FTP
* **Control Connection**: an FTP client sends a connection request to a remote FTP server at the **default TCP port 21**
* **Data Connection**: after authentication, this connection is used for transferring data (files/folders)

#### FTP Connection Types
* **Active Mode**

![image](https://github.com/user-attachments/assets/10ca4eeb-c3bb-4b04-8cec-12cdb9cf0a3c)

* **Passive Mode**

![image](https://github.com/user-attachments/assets/0d1cb719-455f-48d3-ae9d-57a264a54490)

#### FTP Data Types
* **ASCII/Type A**: this is the default type & is used for text file transfers
    * if necessary, data is converted into **8-bit ASCII** before transmission & converted back once delivered
* **Image/Type I**: this is commonly referred to as the binary mode as it uses **byte-by-byte** transmission
    * recipient stores the received bytes upon reception
* **EBCDIC/Type E**: is suitable for test communication using the **EBCDIC** character set
* **Local Type L n**: is typically used for file transfer among machines that do not support 8-bit bytes transfers where ```n``` represents the byte size

#### Request & Response - FTPS
* **Implicit Connection**: FTPS client & server establish a link in which both command & data channels are secured automatically with **SSL**
* **Explicit Connection**: FTP client explicitly requests the server to invoke an **SSL/TLS** secured session on port 21 & then continues data transfer based on mutually agreed authentication mechanism
    * in this style connection, the client can choose which channel to encrypt or ecnypt noth channels

### SMTPS Protocol
#### Technical Overview
* **Simple Mail Transfer Protocol Secure (SMTPS)** is an extension of SMTP
* SMTP & POP# are both email protocols but have ver different fucntions
    * **POP3** is used to download email messages from a mail server to a client
    * **SMTP** is used to send emails from the client to a mail server **"Email Push Protocol"**

#### SMTP Protocol
* **SMTP End-to-End**: used for email communication between organizations in which the sender-side SMTP client initiates an SMTP connection to the recipient’s SMTP server.
* **SMTP Store-and-Forward**: used for email communication within an organization in which the SMTP server will maintain the copy of the mail within itself (i.e., store) until the copy is forwarded to the receiver.

#### SMTP Components
* **User Agent (UA)**: UA is responsible for creating the email message and sending it to the Mail Transfer Agent (MTA). 
* **Mail Transfer Agent (MTA)**: MTA will transfer the email from the UA to the recipient MTA across the Internet (often, the MTA and Mail Delivery Agent are hosted on the same server).

![image](https://github.com/user-attachments/assets/05f4e9af-e24e-4974-b9b7-dbafdbf83a92)

#### TLS Process in SMTPS
* **SMTPS** is not a proprietary protocol; instead, it wraps SMTP inside TLS
* you can say that SMTPS is similar to SMTP on the application layer, with an extension of TLS encryption at the transport layer
* the ```STARTTLS``` command is used between the email client and the email server.
* **port 587 and 465** are both frequently used for SMTPS traffic
* Mails transmitted using SMTP are not encrypted, so they are prone to sniffing attacks. Therefore, SMTPS is used to encrypt emails through TLS before transmission
* SMTPS also forbid attackers from sending spam messages from compromised/vulnerable domains, exfiltration sensitive information, and conducting phishing attacks.

### POP3S Protocol
#### Technical Overview - POP3S
* **Post Office Protocol Secure (POP3S)** is an extension of the POP3 protocol that is used for the encrypted retrieval of email messages from the email server to the email client

#### POP3 Protocol
* **POP3** is the latest POP version & it retrieves email messages from a **Mail Delivery Agent (MDA)** to a **Mail User Agent (MUA)**

#### POP3 Components and Workflow
1. The email client establishes a connection to the email server.
2. The email client downloads all the queued emails from the email server. (This is a default option; however, the client can select only particular email messages to download.)
3. All emails are saved on the device that initiated the connection.
4. The email server deletes the email copy. (This is a default option; a client can choose not to download an email after it is retrieved.)
 
####  Limitations of POP3
* **Emails are Processed Locally**: No synchronization of email messages across multiple devices & protocol downloads the emails on the currently logged-in device and usually deletes them from the server
**Transmission in clear text**: username and password, along with the email messages, are sent in cleartext, which makes them vulnerable to sniffing attacks.

#### POP3S

![image](https://github.com/user-attachments/assets/3f69e812-477a-4058-8a85-48f70debe954)


#### Waht is the default port for HTTPS?
```
443
```

#### In a passive FTP connection, what is the first command the client sends over the command channel?
```
PASV
```

## Task 3: Applicaion Layer - More Secure Protocols
### DNSSEC























