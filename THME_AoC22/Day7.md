# CyberChef Maldocs roasting on an open fire

* ** CyberChef** is a web-based application used to slice, dice, encode, decode, parse and analyze data or files

### Using CyberChef for mal doc analysis
1. **Add the file to CyberChef** either by dragging and dropping the file into the input text pane or opening the file within **CyberChef**'s page

2. **Extract Strings** using this option will show us all **ASCII** and **Unicode-printable** characters
    * will need to select all printable characters in the string box
    * may need to increase the minimum length shown until you remove all noise an attacker might've used to obfuscate their code

3. **Remove Patter** can be accomplished by utilizing the **Find/Replace** operation
    * use the **regex** text area to indicate what you would like to find and what to replace those findings with
    * these will need to be entered into **[]** and use **(\)** to escape the characters

4. **Drop Bite** if you find or decipher that some encoding is being used within the printable characters, this fuction can be used to remove any extra bytes added as obfuscation

5. **Decode Base64** with only the encoded text left, you can use the desired from/decoding algorithm to show the plain text

6. **Decode UTF-16** with this sample we can see that this is a **PowerShell** script
    * by default PowerShell uses **Unicode UTF-16LE** encoding
    * **Decode Text** can be used to decode this 

7. **Find and Remove Common Patters** with **Find/Replace** again

8. Look for code that finds and replaces noticable characters to obfuscated characters
    * in this sample: rEPlA\`cE**]b2h_**,[array]sd,sw,**http**,3d[1

9. **Extract URLs** with the before step performed, it is easy to see that we have multiple URLs listed
    * best to print them all on their own line so that they can be easily read for analysis

10. **Split URLs with @** since each URL is show with an **@** listed after it, we can split them at that character and replace it with a new line character **\n**

11. **Defang URL** now with all of the URLs in plain text, we can use this feature to make the URLs unclickable so that the SOC team can analyze them without any accidental clicks


## Questions

**What is the version of CyberChef found in the attached VM?**
```
v9.49.0
```

**How many recipes were used to extract URLs from the malicios doc?**
```
10
```

**We found a URL that was downloading a suspicious file;what is the name of that malware?**
```
mysterygift.exe
```

**What is the last defanged URL of the bandityeti domain found in the last step?**
```
hxxps[://]cdn[.]bandityeti[.]THM/files/index/
```

**What is the ticket found in one of the domains?
```
THM_MYSTERY_FLAG
```

