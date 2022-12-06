# Email Analysis: It's beginning to look a lot like phishing

## What is email analysis
* process of extracting the email header information to expose the email details
* contains technical details of the email like sender, recipient, path, return address and attachments
* two main concerns in email analysis and how they are executed:
 1. **Security Issues:** identifying suspicious/abnormal/malicious patterns in emails
 2. **Performance Issues:** identifying delivery and delay issues in emails
 3. **Social Engineering:** psychological manipulation of people into performing or divulging information by exploiting weaknesses in human nature
 4. **Phishing:** a sub-section of social engineering delivered through email to trick someone into either revealing personal information and credentials or executing malicious code on their computer

## Does Email Analysis Still Matter?
* Yes, these attacks are still very common, effective and difficult to detect
* this is also part of penn testing and red teaming implementations

## How to Analyse Emails
**From**                          ==> the sender's address
**TO**                            ==> receiver's address, including CC and BCC
**Date**                          ==> timestamp of when email was sent
**Subject**                       ==> subject of the email
**Return Path**                   ==> the return address of the reply, a.k.a. "Reply-To"
**Domain Key & DKIM Signitures**  ==> email signitures are provided by email services to identify and authenticate emails
**SPF**                           ==> shows the server what was used to send the email
**Message-ID**                    ==> Unique ID of email
**MIME-Version**                  ==> as the name implies
**X-Headers**                     ==> receiver mail providers usually add these fields/ can differ from each mail provider
**X-Received**                    ==> mail servers that the email went through
**X-Spam Status**                 ==> spam score of the email
**X-Mailer**                      ==> email client name

## Important Email Header Fields for Quick Analysis
| **Questions to Ask/Required Checks** | **Evaluation** |

|======================================|================|

| Do the **"From"**,**"To"**, and **"CC"** fields contain valid addresses? | Having invalid addresses is a red flag |

| Do the **"From"** and **"To"** fields match? | Having **the same** sender and recipient is a red flag |

| Do the **"From"** and **"Return-Path"** fields match? | Having **different** values in these sections is a red flag |

| Was the email sent from the correct server? | Emails should have come from the official mail servers of the sender |

| Does the **"Message-ID"** field exist, and is it valid? | Empty and/or malformed values are red flags |

| Do the hyperlinks redirect to suspicious/abnormal sites? | Suspicious links and redirections are red flags |

| Do the attachments consist of or contain malware? | Suspicious attachments are a red flag / File hashes marked as suspicious/malicious by sandboxes are a red flag |

* can use Sublime text as an easy way to parse email header information
* if files has an **".eml"** or **".msg"** extension, sublime text will automatically detect the structure and highlight the header fileds for ease of readability
* **emlAnalyzer** is a command line tool that used to parse email header information

| **-i** | file to analyze using the full path to the file |

| **--header** | show header |

| **-u** | show URLs |

| **--text** | show clear text data |

| **--extract-all** | Extract all attachments |
  
 
 **What is the email address of the sender?**
 * command used:
 ```bash
 emlAnalyzer --header -i  ~/Desktop/Urgent\:.eml
 ```
 * output:
 ```bash
 ==============
 ||  Header  ||
 ==============
X-Pm-Content-Encryption.....end-to-end
X-Pm-Origin.................internal
Subject.....................Urgent: Blue section is down. Switch to the load share plan!
From........................Chief Elf <chief.elf@santaclaus.thm>
Date........................Tue, 6 Dec 2022 00:00:01 +0000
Mime-Version................1.0
Content-Type................multipart/mixed;boundary=---------------------03edd9c682a0c8f60d54b9e4bb86659f
To..........................elves.all@santaclaus.thm <elves.all@santaclaus.thm>
X-Attached..................Division_of_labour-Load_share_plan.doc
Message-Id..................<QW9DMjAyMl9FbWFpbF9BbmFseXNpcw==>
X-Pm-Spamscore..............3
Received....................from mail.santaclaus.thm by mail.santaclaus.thm; Tue, 6 Dec 2022 00:00:01 +0000
X-Original-To...............elves.all@santaclaus.thm
Return-Path.................<murphy.evident@bandityeti.thm>
Delivered-To................elves.all@santaclaus.thm
```
answer:
```
chief.elf@santaclaus.thm
```

**What is the return address?**
```
murphy.evident@bandityeti.thm
```

**On whose behalf was the email sent?**
```
Chief Elf
```

**What is the X-spam score?**
```
3
```

**What is hidden in the value of the Message-ID field?**
```
AoC2022_Email_Analysis
```

**What is the reputation result of the sender's email address per [https://emailrep.io/](https://emailrep.io/)?**
```
RISKY
```

**What is the filename of the attachment?**
```
Division_of_labour-Load_share_plan.doc
```



