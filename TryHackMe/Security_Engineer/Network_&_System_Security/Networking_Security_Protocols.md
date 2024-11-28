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
* ensures that the **DNS** response received is the from domain owner
* to achieve this **DNSSEC** requires 2 main things:
  * **DNS** zone owner should sign all **DNS** records using their private key
  * **DNS** zone publishes its public key so users can check the validity of the **DNS** records signatures
* **Authenticity**: you can confirm that a certain **DNS** owner has authored & sent the record which is possible because the received record is signed by the **DNS** owner's private key
* **Integrity**: you can ensure that no changes have been made to the record on its way as the record will render its signature invalid if changes were made

### OpenPGP
* with the addition of **SSL/TLS** email messages security enhanced dramatically
* **OpenPGP (Pretty Good Privacy)**: is an encryption program created by Phil Zimmerman
* is an **open standard** for signing & encrypting files & email messages
* **GnuPG (GPG)** is a free & open-source implementation of the **OpenPGP** standard
* when used with email, **GPG** requires each user to generate a key pair

![image](https://tryhackme-images.s3.amazonaws.com/user-uploads/5f04259cf9bf5b57aed2c476/room-content/ad9e412e946ecbe7b8aa82ccdb55cb42.png)

```
gpg --encrypt --sign --armor -r [RECIPIENT EMAIL ADDRESS] [MESSAGE FILE]
```
* ```--encrypt -r [EMAIL ADDRESS]``` will encrypt ```[MESSAGE FILE]``` using the ```-r``` public key associated with the recipient's email ADDRESS
* ```--sign``` will sign our message (using our private key) which proves Authenticity
* ```--armor``` is to produce the output using **ASCII** instead of binary

```
           
user@TryHackMe$ cat message.txt.asc
-----BEGIN PGP MESSAGE-----

hF4Dt1Jduipo/LESAQdAmqgCLQRRQCFNOBWSF+dY64suA8xtty7ysfolfF7+fnUw
crwR2ioRTcXTe6c0dZl/sdmtjDJPZWGHI3XcD7XWA2hPDb+w4P46e9FJGsCE/JaO
1I4BCQIQZc91A79Ebli/41D0aVkBmDpjIgvpwjHdmomT7dghTcB+Qp80WbYDnV20
4qTgdgdAnLtQp3fnJCXlZ0BfecPB+ZfECdD1IAleBB3o14v5v/ntfPKfXPZwODUm
ELY7piC2GclBWbirrZsnzTLWeYCrABiKJ3Rb75VgJXdM1uKNBY0HLN06VdEuDy+L
=nRQE
-----END PGP MESSAGE-----
```

### SSH
* provides a secure protocol to use for remote login


#### What does PGP stand for?
```
Pretty Good Privacy
```

#### What does GPG stand for?
```
Gnu Privacy Guard
```

#### What command would you use to generate a key pair using ```gpg```?
```
gpg --gen-key
```

#### What client encrypts traffic?
```
SSH
```


## Task 4: Presentation & Session Layers
### SSL/TLS Protocol
#### Technical Overview
* are protocols used to encrypt data exchanged between a client, such as a web browser, & a server
* can be looked at as a wrapper that encapsulates various communication protocols with encryption

### SSL/TLS Workflow
1. **Client Hello Message**: client sends a hello message to the server; it includes the client TLS version and the cypher suite that the client supports, in addition to random bytes.
2. **Server Hello Message**: server responds with a hello message, highlighting its certificate, chosen cypher suite and random bytes
3. **Authentication**: client authenticates the server’s certificate through the certificate authority that issued
4. **Premaster Secret**: the client encrypts random bytes with the server’s public key. (The client retrieves the public key from the server’s certificate.)
5. **Decryption of Premaster**: The server decrypts the premaster with its private key.
6. **Session Keys Generated**: The client and the server generate session keys based on client random bytes, random server bytes and premaster secret. Both will arrive at the same results; this session key is not transmitted, and encryption and decryption are based on this key.
7. **Ready Messages**: The client and server send a “finished” message using the session key to indicate that the session is ready for transmission. The client and server are now ready to exchange messages over SSL/TLS encrypted connection.

![image](https://tryhackme-images.s3.amazonaws.com/user-uploads/5f04259cf9bf5b57aed2c476/room-content/f1a7e8eaf28b773aab4b5d3ae0f563b6.png)

### SOCKS5 Protocol
#### Technical Overview - SOCKS5

* **Socket Secure (SOCKS)**: is a proxy protocol for data exchange through a delegate server (**SOCKS5 proxy**)
* is used to secure application layer protocols. For example, the **Squid server** implements the **SOCKS5** protocol to transfer data via the HTTP protocol.

#### SOCKS5 Workflow

* Consider a scenario when user A wants to connect with client B over the Internet, but a firewall is between them. The following handshake steps are involved:

##### Client Initiation
* Client A connects with the SOCKS5 proxy and sends the first byte (0x05) to the proxy where “5” is the SOCKS version.
* Client A sends a second byte (0x01). One means authentication is supported.
* Client A sends the third byte (0x00, 0x01, 0x02, or 0x03); these bytes denote the supported authentication methods and can be of variable length.

##### SOCKS5 Proxy Reply
* The proxy sends back a second byte, which is the chosen authentication method by the proxy server.
* After the initiation packet, client A sends the request packet, which includes BHOST & BPORT numbers.
* The successful session is established between client A and the proxy. The same steps are involved in the association of client B with the proxy.

##### Data Transfer
* After successfully associating both clients with a proxy server, both clients can exchange data and share information that will be routed through the proxy server.

![image](https://tryhackme-images.s3.amazonaws.com/user-uploads/5f04259cf9bf5b57aed2c476/room-content/3814e1abc3946c5f256e5b9aa7eff893.png)

#### Benefits of SOCKS5
* in direct communication via the proxy server, hides the internal details from routing over the internet
* a proxy acts as a relay server, bypassing internet censorship based on the client's IP ADDRESS

#### Does the hello message during the SSL handshake include the TLS version?
```
yea
```

#### What version of SOCKS is being utilized if the first byte is 0x05?
```
5
```

#### What is the flag after completing the exercise?
```
THM{GOT_THE_SSLKEY}
```


## Task 5: Network Layer

```
```



























