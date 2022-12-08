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


