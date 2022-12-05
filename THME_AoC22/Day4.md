# Scanning through the snow

## What is Scanning
* is a set of procedures for identifying live hosts, ports, and services. As well as discovering the OS of the target(s), and identifying vulnerabilities and threats in the network
* typically automated

## Scanning Types

 **Passive Scanning:** involves scanning a network withour directly interacting with the target device
 * usually carried out through packet capture and analysis tools like Wireshark

 **Active Scanning:** method where individual endpoints in a IT network are scanned to retrieve more detailed information
 * involves sending packets or queries directly to specific assets

## Scanning Techniques

**Network Scanning**

* usually a collection of interconnected hosts or computers to share information and resources
* used to map a network including live endpoints, open ports, IP address, and services

**Port Scanning**

* *"In computer networking, a port is a number assigned to uniquely identify a connection endpoint and to direct data to a specific service.
At the software level, within an operating system, a port is a logical construct that identifies a specific process or a type of network service."* - Wikipedia
* conventional method to examine open ports in a network capable of receiving and sending data
* results call into the following categories:
 * **Closed Ports:** host is not listening to the specific port
 * **Open Ports:** host actively accepts a connection on the specific port
 * **Filtered Ports:** indicates that the port is open, however, the host is not accepting connections or only accepting connections per certain criteria ie. specific source IP address

**Vulnerability Scanning**

* proactively indentifies the network's vulnerabilities in an automated way that helps determine whether the system may be threatened or exploited

## Scanning Tools

**Network Mapper(Nmap)**
* a popular tool used to carry out port scanning, discover network protocols, identify running services, and detect operating systems on live hosts
 * **TCP SYN Scan:** this type of scan will get a list of live hosts and associated ports on the hosts without completing the TCP three-way handshake, making the scan a bit stealthier
 ```bash
 namp -sS 10.10.215.250
 ```
 * **Ping Scan:** allows scanning the live hosts in the network without going deeper and checking for port services
 ```bash
 namp -sn 10.10.215.250
 ```
 * **Operating System Scan:** allows scanning of the type of OS running on a live host
 ```bash
 nmap -O 10.10.215.250
 ```
 * **Detecting Services:** get a list of running services on a live host
 ```bash
 nmap -sV 10.10.215.250
 ```

**Nikto**
 * is an open-source software that allows scanning websites for vulberabilities
 * enables looking for subdomains, outdated servers, debug messages, etc. on a website
 ```bash
 nikto -host 10.10.215.250
 ```

 **What is the name of the HTTP server running on the remote host?**
 ```
Apache
 ```

 **What is the name of the service running on port 22 on the QA server?**
 ```
 SSH
 ```

 **What flag can you find after successfully accessing the Samba service?**
 ```
{THM_SANTA_SMB_SERVER}
 ```

 **What is the password for the username santahr?**
 ```
santa25
 ```
