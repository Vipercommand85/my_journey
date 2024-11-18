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
* 



















