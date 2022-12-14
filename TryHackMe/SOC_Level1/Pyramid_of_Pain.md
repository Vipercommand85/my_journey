# Pyramid of Pain

## Task 2 Hash Values (Trivial)

* Per Microsoft, the hash value is a numeric value of a fixed length that uniquely identifies data
    * **MD5** 128-bit hash value, **NOT CRYPTOGRAPHICALLY SECURE**

    * **SHA-1** 160-bit hash value string as a 40 digit hexadecimal number, **NIST** recommends migrating to **SHA-2/SHA-3**

    * **SHA-2** has many variants with **SHA-256** the most common that produces a 256-bit hash value as a 64 hexadecimal number
* A has is not considered to be cryptographically secure if two files have the same hash value or digest

* Various onlime tools can be used to do hash lookups, ie. [Virus Total](https://virustotal.com) and [Metadefender Cloud - OPSWAT](https://metadefender.opswat.com/?lang=en)

* modifying a file by even a single bit will produce a different hash allowing attackers to obfuscate their malware if only files hashes are used as the **IOC**

**Provide the ransomware name for the hash `63625702e63e333f235b5025078cea1545f29b1ad42b1e46031911321779b6be`:**
```
Conti
```

## Task 3 IP Address (Easy)

* Used to identify any device connected to a network that allows it to send and receive information over the network

* Pyramid of Pain indicated IP address with the color green

* can block, drop, or deny inbound requests from specific IP addresses on the parameter or external firewall


**What is the ASN for the third IP address observed? 134.119.253.108 RU**
```
Host Europe GmbH
```

**What is the domain name associated with the first IP address observed? 50.87.136.52 US**
```
craftingalegacy.com
```

## Task 4 Domain Names (Simple)

* Domain Names map an IP adress to s string of text

* usually contain a domain (**evilcorp**.com) and a top-level domain (evilcorp.**com**)
    * can add as many subdomains as needed (**tryhackme**.evilcorp.com)

* many DNS providers have loose standards and provide APIs to make it even easier for an attacker to change the domain name(s)

* **Punycode** is a way of converting words that cannot be written in ASCII, into a Unicode ASCII encoding
    * ie **ad1das.de** ==> **http://xn--addas-04a.de/**

* **URL Shorteners** is a tool that creates a short and unique URL that will redirect to the specific website specified during the initial step of setting up of the URL Shortener link
    * the following list are some of the services that attackers can use for this purpose:
    1. bit.ly
    2. goo.gl
    3. ow.ly
    4. s.id
    5. smarturl.it
    6. tiny.pl
    7. tinyurl.com
    8. x.co


## Questions

**Go to this report on app.any.run and provide the fistt malicious URL request that is shows**
```
craftingalegacy.com
```

**What term refers to an address used to access websites?**
```
Domain Name
```

**What type of attack uses Unicode characters in the domain name to imitate a known domain?**
```
Punycode Attack
```

**Provide the redirected website for the shortened URL using a prview: http://tinyurl.com/bw7t9p4u**
```
https://tryhackme.com/
```


## Task 5 Host Artifacts (Annoying)

* Attacker would be a bit more frustrated if the Blue Team could detect his attack

* Attacker would need to circle back at this detection level and change his attack tools and methodologies

* **Host Artifacts** are traces or observables that attackers leave on the system
    * registry values
    * suspicious process execution
    * attack patterns or IOC
    * files dropped by malicious applications


## Questions

**What is the suspicious IP the victim machine tried to connect to in the screenshot above?**
```
35.214.215.33
```

**Use the tools introduced in task 2 and provide the name of the malware associated with the above IP**
```
Emotet
```

**What is the name of the malicious document associated with the dropped binary?**
```
G_jugk.exe
```

**What is the name of the written report of the associated dropped binary?**
```
CMO-100120 CDW-102220.doc
```


## Task 6 Network Artifacts(Annoying)

* if you can detect and respond to these threats, the attacker would need more time to go back and change his tatics or modify the tools

* examples of network artifacts:
   user-agent string
   C2 Information
   URI patterns followed by HTTP POST requests

* can use TShark or Snort to detect these arifacts

## Questions
**What browser uses the User-Agent string shown in the screenshot above?**
```
Internet Explorer
```

**How many POST request are in the screenshot above?
```
6
```


## Task 7 Tools (Challenging)

* at this stage the attacker would most likely give up trying to break into your network or go back to try to create a new tool that serves the same purpose

* attackers would use utilities to create malicious maldocs for spearphishing attempts, backdoors that can be used to establish C2 Infrastructure, any **.EXE/.DLL** files, payloads, or password crackers.

* Antivirus signatures, detection rules, and YARA rules can be great weapons for you to use against attackers at this stage

* [MalwareBazaar](https://bazaar.abuse.ch) and [Malshare](https://malshare.com) are good resources to provide access to samples, malicious feeds, and YARA results

* [SOC Prime Threat Detection Marketplace](https://tdm.socprime.com) is a platform where security professionals share their detection rules for different kinds of threats including the latest CVE's that are being exploited in the wild

* [SSDeep](https://github.com/ssdeep-project/ssdeep) allows you to perform similarity analysis on files to find potetnially slightly different maldocs


### Questions
**Provide the method used to determine similarity between the files**
```
Fuzzy Hassing
```

**Provide the alternative name for fuzzy hashes without the abbreaviation**
```
Context Triggered Piecewise Hashes
```


## Task 8 TTPs (Tough)

* **TTP (Tatics, Teqniques, & Procedures):** includes the entire [MITRE ATT&CK Matrix](https://attack.mitre.org) which outlines notable adversary's steps taken to achieve their goal, from starting point with phishing attempts to persistence and data exfiltration

### Questions
**How many techniques fall under the Exfiltration category as outlined by the ATT&CK Matrix from MITRE?**
```
9
```

**What is the name of the commercial, remote access tool used by Chimera for C2 beacons and data exfiltration?**
```
Cobalt Strike
```

