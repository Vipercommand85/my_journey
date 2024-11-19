# Task 1: Introduction
* Linux systems provide a reliable and robust alternative to closed-source systems and can help cut down licensing costs dramatically
* securing/hardening Linux is a must
## Linux VM
* **USERNAME**: tryhackme (i.e., ssh tryhackme@MACHINE_IP)
* **PASSWORD**: insecurePass123
 
# Task 2: Filesystem Partitioning & Encryption
* encryption makes data unreadable without the decryption key
* modern Linux distros have **LUKS (Linux Unified Key Setup)** preinstalled
* when a partition is encrypted with LUKS, the disk layout would look as follows:

![image](https://github.com/user-attachments/assets/bc0671ba-1ea9-4a0d-b1a7-cb8e568dc467)
## LUKS phdr
* stands for **_LUKS Partition Header_**
* stores information about the UUID (Universally Unique Identifier), used cipher, cipher mode, key length & checksum of the master key
## KM
* stand for **_Key Material_**
* each key material section is associated with a key slot, which can be indicated as active in the LUKS phdr
* when a key slot is active the associated key material section contains a copy of the master key encrypted wuth a user's password
* there are 8 KM able to be active
## Bulk Data
* refers to the data encrypted by the master key
* the master key is saved & encrypted by the user's password in a key material section

LUKS reuses existing block encryption implementations with the pseudocode to encrypt data as follows:
```bash
enc_data = encrypt(cipher_name, cipher_mode, key, original, original_length)
```
* as we can see, LUKS works with different ciphers & cipher modes
* **_Original_** refers to the plaintext data of length, **_original_length_**
* a user-supplied password is used to derive the encryption key using **PBKDF2**
```bash
key = PBKDF2(password, salt, iteration_count, derived_key_length)
```
* using a **_salt_** with a hash function repeating an **_iteration count_** ensures that the resulting **key** is secure for encryption
* to decrypt data use the following syntax:
```bash
original = decrypt(cipher_name, cipher_mode, key, enc_data, original_length)
```

### What does LUKS stand for?
```bash
Linux Unified Key Setup
```
### What is the flag in the secret vault?
```
sudo cryptsetup open --type luks secretvault.img myvault
sudo mount /dev/mapper/myvault myvault
cat myvault/task3_flag.txt
THM{LUKS_not_LUX}
```

# Task 4: Firewall
* **Firewalls** decide which packets can enter a system & which can leave a system
* without a firewall, a client can communicate with any server without restrictions as well as listen for any connections from any clients
* a host-based firewall is a piece of software installed on a system we want to protect

## Linux Firewalls
* the first Linux firewall was a packet filtering firewall, stateless firewall
* **Stateless Firewall**: can inspect certain fields in the IP & TCP/UDP headers to decide what is done with the packet
* this type of firewall will not maintain information about ongoing TCP connections, which can be abused
* current Linux firewalls are stateful firewalls, they **DO** keep track of ongoing TCP connections
* it is impossible to allow & deny packets based on the process, we use the port number instead
* **SELinux** and **AppArmor** can be used for granular control over processes & their network access

### Netfilter
* at the very core we have **_netfilter_**
* provides a packet-filtering software for Linux kernel 2.4.X & later
* this software requires a front-end such as **_iptables_** or **nftables_**

### iptables
* provides the user-space command line tools to confiugre the packet filtering rule set using the netfilter hooks
* has the following default chains:
  * **Input**: applies to the packets incoming to the firewall
  * **Output**: applies to the packets outgoing from the firewall
  * **Forward**: applies to the packets routed through the system
* syntax to enable access to an SSH servver on our system remotely
```bash
iptables -A INPUT -p tcp --dport 22 -J ACCEPT
```
* ```A INPUT``` appends to the _INPUT_ chain, i.e. packets destined for the system
* ```-p tcp --dport 22``` applies to _TCP_ protocol with destination port 22
* ```-j ACCEPT``` specifies (jump to) target rule _ACCEPT_
```bash
iptables -A OUTPUT -p tcp --sport 22 -j ACCEPT
```
* ```-A OUTPUT``` append to the **_OUTPUT_** chain, i.e., packets leaving the system
* ```-p tcp --sport 22``` applies to TCP protocol with _source port_ 22

* let's say you only want to allow traffic to the local SSH serer & block everything else:
* ```iptables -A INPUT -j DROP``` to block all incoming traffic not allowed by previous rules
* ```iptables -A OUTPUT -j DROP``` to block all outgoing traffic not allowed in previos rules

* in practice you should flush (delete) previous rules before appluing new ones with:
```bash
iptables -F
```

### nftables
* is supported in **_Kernel 3.13_** and later, addin various improvements over iptables, particularly in scalability & performance
* unlike _iptables_ _nftables_ starts with no tables or chains which you will need to add before adding any rules
```fwfilter``` will create a table
```bash
nft add table fwfilter
```
```add``` is used to add a table
* other commands include
 * ```delete``` to delete a table
 * ```list``` to list the chains & rules in a table
 * ```flush``` tp clear all chains & rules from a table
``` table TABLE_NAME``` used to specify the name of the table we want to create or work on
* will add an _input_ & _output_ chain
```nft add chain fwfilter fwinput { tyoe filter hook input priority 0 \; }```
```nft add chain fwfilter fwoutput { tyoe filter hook output priority 0 \; }```
* ```fwinput``` the input chain of type ```filter``` & applies to the input hook
* ```fwouput``` the output chain of type ```filter``` & applies to the output hook
```bash
nft list table fwfilter
```
* this will list out the current rules in the specified table
```bash
root@AttackBox# sudo nft list table fwfilter
table ip fwfilter {
    chain fwinput {
        type filter hook input priority filter;
        tcp dport 22 accept
    }

    chain fwoutput {
        type filter hook output priority filter;
        tcp sport 22 accept
    }
}
```

### UFW
* stands for **_Uncomplicated Firewall_**
* provides a front-end to iptables to the front-end of netfitler
![image](https://github.com/user-attachments/assets/a94d5064-bcc6-4d4b-a1b5-a5be7ab966a9)

```bash
ufw allow 22/tcp
```
* ```allow``` will allow traffic through _TPC port_ 22
* ```ufw status``` will show all the current rules in order they are processed


 ### What other TCP port is the attched VM allowing besides 22 TCP?
 ```
12526
```
### What is the allowed UDP port?
```
14298
```


## Task 5: Remore Access
### Protecting Against Password Sniffing
* remote access can be achieved through many different protocols & services
* some older systems use cleartext protocols such as Telnet, SSH or any other encrypted protocol should always be used instead

### Protecting Against Password Guessing
* when you set up your Linux system with _SSH_ for remote administration, you make your Linux box available for all interested parties
* some guidelines to secure you box:
 * disable ```root``` login to force login as non-root users
 * disable password authentication; force public key authentication instead
 * configuration of the **_OpenSSH_** server can be controlled via the ```sshd_config``` file usually located at ```/etc/ssh/sshd_config```
 * it is a good idea to ensure you have access to the physical terminal before you disable password authentication to avoid locking yourself out
 * you can disable root long by adding the following line:
```bash
PermitRootLogin no
```
* ensure that the following 2 lines are present & set accordingly in your ```sshd_config``` file:
```bash
PubkeyAuthentication yes
PasswordAuthentication no
```
* to create an SSH key pair, use the following command:
```bash
ssh-keygen -t rsa
```
 * will generate a private key saved as ```id_rsa``` & a public key saved as ```id_rsa.pub```
* you will need to securely copy your public key to the target SSH server, you can use the following command:
```bash
ssh-copy-id [username]@[target_server]
```

### What flag is hidden in the ```sshd_config``` file?
```
THM{secure_SEA_shell}
```

## Task 6: Securing User Accounts
* ```root``` account carries a tremendous power & hence risk
* using a non-root account is recommended for everyday work to avoid sabotaging your system

### Use sudo
* a best practice is to create a user account for administrative tasks that is added to the **_sudoers_** group
* users will prepend any command run with ```sudo``` so that they can run commands with **_root user priviledges_**
* stands for **_Super User Do_**
```bash
usermod -aG sudo [USERNAME]
```
* ```usermod``` modifies the specified user account
* ```-aG``` appends user to the group
* ```sudo``` name of the group of users who can use ```sudo```(Debian-based distros)
 * RHEL/Fedora will use the ```wheel``` group for sudo users

### Disable root
* once you have a created an account for administrative purposes, you might want to consider disabling the ```root``` account
* straightfoward way is to modify the root account entry in the ```/etc/passwd``` file as follow from:
```bash
root:x:0:0:root:/root:/bin/bash
```
TO:
```bash
root:x:0:0:root:/root:/sbin/nologin
```

### Enforce a Strong Password Policy
* ```libpwdquality``` library provides many options for password constratints
* config file can be found at:
```/etc/security/pwdquality.conf``` on RHEL/Fedora distros
```/etc/pam.d/common-password``` on Debian/Ubuntu distros
 * you can install this library with the following command:
```bash
apt-get install libpam-pwdquality
```
* some example options are as follows:
```difok``` allows you to specify the number of characters in the new password that weren't present in the old password
```minlen``` sets the minimum length for new passwords
```minclass``` specifies the minimum number of required classes of characters, i.e., uppercase, lowercases, digits, etc.
```badwords``` provides a space-seperated list of words that must not be contained in a chosen password
```retry=N``` prompts the user ```N``` times before returning an error

* example config file:
```bash
difok=5
minlen=10
minclass=3
retry=2
```

### Disable Unused Accounts
* it is vital to disable unused user accounts that are no longer active/needed to access the system(s)
* you can disable user accounts the same as stated above with the ```/sbin/nolongin``` set as the default user's login shell in the ```/etc/passwd``` file
* this should also be done for service accounts such as ```www-data``` for webservers, ```mongo``` for database servers among other
* anyone these services could have an **RCE** discovered in the future and by giving them all a default no longin shell, you can prevent any attackers from having an interactive shell if a system(s) were to be compromised

### Software & Services
* every peice of software you install on your system also increases the number of potential vulnerabilities
* here are some guidelines to help you reduce the attack surface

### Disable Unnecessary Services
* removing or disabling unneeded service and packages is an easy way to improve your security posture
* this will minimize the attack vector that you give adversaries

### Block Unneeded Network Ports
* after removing/disabling any unneeded packages, it is best to update your firewall rules accordingly

### Avoid Legacy Protocols
* to be sure to use protocols that encrypt traffic, i.e., **_SSH_**, **_SFTP_**

### Remove Identification Strings
* when ever you connect to a remote server, it usually replies with its version number
* this would give adversaries a huge amount of knowledge on how to attack the box

#### Besides FTPS, what is another secure replacement for TFTP & FTP?
```
SFTP
```

## Task 8: Update & Upgrade Policies
* to update your system on _Ubuntu/Debian_ systems you can use the following commands:
```bash
apt update
apt upgrade
apt update && apt upgrade -y
```
```apt update``` will download package information form the configured sources
```apt upgrade``` will install all available upgrades for all packages from the configured sources
```-y``` will install all the available upgrades without prompting for approval
* to updae your system on _RHEL/Fedora_ systems use the following commands:
```dnf update``` on newer releases (i.e. RHEL 8 and later)
```yum update``` on older releases (i.e. RHEL 7 and older)

### Ubuntu LTS Release
* is released every 2 years
* will grant you 5 years of security updates for the base OS without a subscription
* you can get another 5 years with an **_Extended Security Maintenance (ESM)_**

### RedHat Releases
* RHEL 8 & 9 offer 12 years of support in three phases:
 * Full support for 5 years
 * maintenance suppoer for 5 years
 * extended life phase for 2 years

### Kernel Updates
* updating should not be limited to the installed software
* **_Dirty Cow_** was a vulnerability that affected the linux kernel giving a root attack root access to a system

#### What command would you use to update an older RedHat system?
```
yum update
```
#### What command would you use to update a modern Fedora system?
```
dnf update
```
#### What 2 commands are required to update an Debian system?
```
apt update && apt upgrade
```
#### What does ```yum``` stand for?
```
Yellowdog Updater, Modified
```
#### What does ```dnf``` stand for?
```
Dandified YUM
```
#### What flag is hidden in the ```sources.list``` file?
```
THM{not_Advanced_Persistent_Threat}
```

## Task 9: Audit & Log Configuration
* most log files on Linux systems are stored in the ```/var/log``` directory
* ```/var/log/messages``` general log for Linux systems
* ```/var/log/auth.log``` lists all authentication attempts (debian-based)
* ```/var/log/secure``` lists all authentication attempts (RHEL-based)
* ```/var/log/utmp``` access log that contains information regarding users that are currenlty logged into the system
* ```/var/log/wtmp``` access log that contains information for all users that have logged in & out of the system
* ```/var/log/kern.log``` contains messages from the kernel
* ```/var/log.boot.log``` contains messages from start-up & boot information

 ```tail -n 12 boot.log```
 * ```tail``` command used to show the last lines of a file (defualt is 10)
 * ```-n``` specifies the number of lines to present
 * ```boot.log``` the file that you want to view

```grep FAILED boot.log```
* ```grep``` used to find line(s) with the specified key word in a text file
* ```FAILED``` the key word to search the text file for
* ```boot.log``` the file that you want to search through

#### What command can you use to display the last 15 lines of ```kern.log```?
```
tail -n 15 kern.log
```
#### WHat command can you use to display the lines containing the word ```denied``` in the ```secure``` file?
```
grep denied secure
```





















