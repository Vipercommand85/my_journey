# Nothing Escapes Detective McRed

## What is OSINT

     **OSINT** is gathering and analysing publicly available data for intelligence purposes from the internet, mass media, specialist journals/research, photos, and geospatial information

## OSINT Techniques
### Google Dorks

     involves using specialist search terms and advanced search operators to find results not usually displated using regular search terms
        1. **inurl:** searches for a specific text in all indexed URLS ie. **inurl:hacking**
        2. **filetype:** searches for specific file extension ie. **filetype:pdf "hacking"**
        3. **site:** searches all the indexed URLS for the specified domain ie. **site:tryhackme.com**
        4. **cahce:** gets the latest cached version by the Google search engine ie. **cahce:tryhackme.com**

### WHOIS Lookup

     this database stores public domain information such as registrant, administrative, billing and technical contact
     is a publicly available database
     some registrars offer Domain Privacy options that allow users to keep their WHOIS information private from the general public and only accessible to certain entities

### Robots.txt

     publicly accessible file created by website admins that is intended for search engines to allow or disallow indexing of the website's URLs
     is directly accessible through the domain's main URL
     is **not able** to be modified

### Breahed Database Search

     since many major social media and tech giants have suffered data breaches in the past, that information becomes publicly available
     many web services offer to check if your email address or phone number is in a leaked database; [HaveIBeenPwned](https://haveibeenpwned.com)

### Searching GitHub Repos

     some developers set their privacy of a repo to **public** which means anyone can access it
     repos contain complete source code and most times, include passwords, access tokens, etc.


#### What is the name of the registrar for the domain **santagift.shop**?
```
Namecheap, Inc.
```

#### Find the website's source code (repository) on github.com and open the file containing sensitive credentials; what is the flag?
```
{THM_OSINT_WORKS}
```

#### What is the name of the file containing passwords?
```
config.php
```

#### What is the name of the QA server associated with the website?
```
qa.santagift.shop
```

#### What is the DB\_PASSWORD that is being reused between the QA and PROD environments?
```
S@nta2022
```

