# UTM Features:
* Antivirus
* Anti=Spam
* Content Filtering
* Web Filtering
	
# Automation
Built into Junos OS
Can be either on-box, off-box, combination of both

# Junos Space

Applications available for the Junos Space Network Management Platform (JSNMP):
* Security Director
* Connectivity Services Director: Offers service providers and enterprises the power to quickly design, provision, and deliver
* Service Insight
* Service Now
* Network Director: Simplifies ethernet switch deployments and provides rapid operation of campus and date center networks.
* Policy Enforcer: Component of security director provides the ability to orchestrate policies created by Juniper's Advanced Threat Prevention (ATP)cloud-based malware detection solution
	
* Provides tools that enable automation device discovery and management, job operation management, audit laogging, and network administration
* Service Now & Service Insight provide detection, isolation, and resolution of network faults and incidents; do not require additional licensing but require a valid support contract to function
* Security Director, Network Director, and Connectivity Services require additional licensing
a) Security Director delivers a scalable and responsive security management application that improves the reach, ease, and accuracy of policy administration.
b) depoly end-to-end security services on network elements- Firewall policies, VPSs, NAT, UTM, Application Services, IPS, Security Intelligence, and event logging services
c) Improves network security policy consistency and compliance, even as networks scale
d) Intuitive Web management UI is easy to run and make changes across any environment encompassing up to 15,000 devices

# Juniper Advanced Threat Prevention
a) Detection: machine learning and a behavoriotal analysis engine that continuously collects and detects
b) Analytics: correlates and consolidates threat information
c) Mitigation: creates policies that strengthen inline security tools against future attacks

# JSA: market leading SEIM

# Junos Architecture:
* Junos OS is the base OS, makes it easy to learn and administor multiple devices
* Junos OS functionality is compartmentalized into multiple software processes
* each process runs in its own protected memory space, ensuring that one process cannot directly interface with another

# Junos OS Planes:
1) Control Plane: contains the RE (Routing Engine), kernel, processes, chassis management, UI, routing protocols, system monitoring, and clustering control
2) Data Plane: contains the Packet Forwarding Engine (PFE) that forwards packets, session setup and maintenance, load balancing, secuirty policy, screen options, VPN, and IDP
	
# SRX Series Devices:
* high performance firewall that runs Junos OS
* intergrates security services, such as IDP, UTM, and AppSecure
* Scalable to a variety of form factors
* automates with the controllers to coordinate single gloabl security policy
* includes services such as stateful firewalling, NAT, VPNs

# SRX DEVICE

## Traffic Processing and Logical Packet Flow
* Transit Traffic Processing: is forwarded through the local system
* RE provides the forwarding table ( forwarding information base to PFE)

## Exception Traffic Processing
* traffic destined for the local system is processed by the RE CPU
* Examples packets addressed to the chassis:
	- routing protocol updates
	- telnet sessions
	- pings
	- traceroutes
	- replies to traffic sourced from the RE
	- IP packets with the IP Option field
	- traffic that requires the gerenation of ICMP messages
* PFE processes special traffic including ICMP reply messages and TTL expired messages
* internal link is rate-limited to protect from DoS attacks; not configureable
* control traffic is given preference when congestion exists
	
## Packet-Based Processing:
* stateless packet processing
* packet mode
* every packet is processed indivisually without regard to session membership
	
## Session-Based Processing:
* stateful packet processing
* flow mode
* first packet triggers session creation
	- sessions are tracked in a session table
	-subsequent packets matching an existing sesssion are treated as packets in the previous session


# Module 4: Juniper SRX Initial Configuration
## Shipped with factory defualt settings, root login has no password
* has a system log for event tracking
* platform-dependent additional parameters

## Branch SRX Series Factory Default configuration
* interface ge-0/0/0 is set for the untrust zone
* defualt IP address on fxp0: 192.168.1.1/24
* defualt IP address irb.0 is in the trust zone: 192.168.2.1/24
* this allows the device to have internet access out of the box
	
## Other SRX devices must be configured manually with CLI	

## Initial Configuration
* ethernet cable must be plugged into fxp0 on an SRX device, defult IP address 192.168.1.1/24
* using browser login as root with no password

## Configuring System Identity
		enter hostname for device
		enter root password
		Add DNS Server entries and Domain Name
		Click save when finished
	# Configuring Date and TIme
		Set time and date in the timne tab in basic settings
	# Management and Loopback Address
		can set the device management port
		section allows you to set the defualt gateway
	# User Configuration
		Click "+" to create new user
		unique username, password, role for user, login ID

# Module 4: SRX Device Basic Interface Configuration Tasks
	
	# Junos Interfaces:
		* Management: used to contect device to a management network (fxp0/em0)
		* Internal: to contect the control and forwarding planes ( fxp1/em1)
		* Network: used to provide media specific connectivity, T1/DS3 
		* Loopback: used to provide a constant and dependable independent hardware interface ( lo0)
		* Services: used to provide 1 or more user interfaces, provided by software ( st0/gr/ip)

	# Interface Naming ge-0/1/0
		* ge ==> interface media type
		* 0 ==> line card slot number
		* 1 ==> interface card (PIC) slot number
		* 0 ==> Port number
		* Interfaces with specific designations are created by Junos OS, are not directly associated with or dependant on physical interfaces
			* ex: lo0/ae/st0/vlan
		* Junos OS created interfaces, gre/mtun/ipip/tap, are non configurable internal interfaces
	

# Module 5: UI Options: The Junos CLI
	
	* When logged in as root, you will be in the Linux shell initially, to enter Junos CLI the command cli but be entered.
		a) root@router% ==> Linux shell
		b) root@router> ==> Junos CLI
		c) for security, use the exit command to log out of the Junos CLI
	
	# CLI Modes:
		A) Operational: used to monitor and troubleshoot the saoftware, network connectivity, and hardware
			1) > is the prompt for this mode
		B) Configuration: used to configure the device such as interfaces, protocols, user access, and system hardware properties
			1) # is the prompt for this mode

	# Context-Sensitive Help
		* type a " ? " anywhere in the command to get help at that point in the command
		* help topic command provides topical information on a command
		* help reference command offers configuration syntax help
		* help aprops command displays context that reference a specified variable
		* CLI provides a completion function utilizing the spacebar
	
	# CLI Operational Mode:
		* commands are set in a hierachical structure
		* can utilize the run command to issue operational mode commands while still in Configuration mode
		# Key capabilities:
			* entering the configuration mode
			* controlling the CLI environment
			* exiting the CLI
			* monitoring and troubleshooting
			* copying files
			* restarting software processes
			* performing system-level operations

	# Junos OS Configuration Mode
		* batch configuration model = must commit configuration changes
		* active configuration is the current operational configuration that is loaded during the boot sequence
		* candidate configuration is a working copy for configuration changes that is initialized with the active configuration
			1) will not become the active configuration until all changes are committed
		* configure command creates a candidate config that is populated with current active config
		* rollback n ==> recover previous active configs
			a) 50 are stored from 1 - 49
		* when entering the config mode, if another user is already in this mode, a message will be displayed with the usename and what portion they are viewing/editing
		* multiple users can enter config mode and commit changes ( up to 32)
		* configure exclusive command enables only a single user to enter config mode to make changes
		* configure private command to enable users to edit provate copies of candidate configs concurrently
			a) when a user issues a commit, their private changes merge back into the global config
			b) any uncommitted changes are discarded when users exit
			c) when a user is in private mode, any other users must enter the private mode or use configure exclusive to become the primary
			d) if 2 users make competing changes, the first user's commit succeeds, the 2nd user will receive a warning; the second user must issue a second commit to active the change
		* conmfigure batch mode allows config changes to be executed in batches
			a) prioritized by the commit server based on the priority of the batch specified by the user or the time when the batch job was added
			b) saves time and system resources by commiting multiple small config edits in a single commit operation
		* configure dynamic command is used to configure routing policies and certain routing policy objects in a dynamic database
		* use the set commnad to edit the candidate config
		* edit command functions like a change directory
		* to move up levels of a hierarchy use up/up n
		* top moves to the top of the hierarchy
			a) can be used with edit to jump from one hierarchy to another
		* exit command moves up one hierarchy when used by itself in a lower level of the hierarchy
			a) when used at the top of a hierarchy, you exit config mode
			b) exit configuration-mode will exit the config mode from any point in a hierarchy
	
	# Backing out of Configuration Changes
		* Rescue Configuration enables you to define a known working configuration with a known state of recovery
		* rollback rescue ==> will dave the rollback 0 configuration as the rescue configuration
			a) you will need to issue the commit command to save this change
		* show system commit include-configuration-revision command will show the identifier of each revision entry on the CLI


# Module 6: Security Zone Objects
	Zone: is a collection of one or more network segments sharing identical security requirements; building blocks of security policies
	* Security Policies reference zones to control transit traffic
		a) interfaces can pass and accept traffic only if assigned to a non-null zone except fxp0/em0/cluster interfaces
	* Rounting instance is a logical routing construct within a platform runnung Junos OS
		a) each routing instance maintains its own RIB and FIB
		b) can contain 1 or more zones that cannot be present in another zone
	* 2 types of zones:
		1) User-defined: can be configured and broken down into Security and Functional sections
			a) Security Zone: a collection of one or more network segments that utilize policies to filter transit traffic
			b) Functional Zone: special zone used for out-of-band device management 
		2) System-define: null zone and junos-host
			a) all interfaces by default belong to the null zone
	
	# Local Host Traffic
		* by default a Junos security device does not accept ttraffic destined to itself
		* select the protocols and service to be accepted from the zone just created
		* any interface in the zone that does not have a specified host-inbounf traffic rules uses this zone's settings
		* Junos security device accepts all outbound traffic sourced from itseld by default

	# Screen Object
		# Screens
			* evaluate L3/L4 headers to block malicious traffic
			* applied to zone level
			* checks traffic prior to policy processing reducing resources for detecting malicious packets
			* should have a baseline of legitimate traffic patterns
		# 2 types of Screens
			1) Anomaly-Based: evaluate in a stateless fashion
				* each packet is evaluated individually for violations
			2) Flood-Based: evaluated in a semi-stateful fashion
				* traffic within the zone is tracked and evaluated against a threshold for violations


# Module 7: Address Object and Service Objects
	Address Objects: used by security policies to represent an IPv4/IPv6 address that can be represented by IP address or prefix, IP range, wildcard address, or DNS address
		1) Zone Address Objects: are tied to a specific zone that can only be used in security policies where the zone is referred
			* these will be removed in future software releases
		2) Global Address Objects: used to aviod duplicate entries for multiple zones, can be used by all security policies but must be unique.
			* are becoming the standard practice when creating address books
			* can utilize the upgrade button in GUI to change a zone address book to a global address book
 			* can create address sets to help store large address books, can also create address sets within an address set

	Service Objects: represents an application that is allowed through the firewall specifing the protocol and port
		* have the ability to use predefined service objects or create custom application objects
		* can create application sets comprised of multiple application objects
		
# Module 8: Security Policies
	Security Policy: a set of rules that instructs a Junos security device how to treat transit traffic
		1) Zone Policies
		2) Global Policies
		3) Default Policy will silently discard packets
	* from zone ==> to zone make up the context for enforcing policies
	* when using zone policies, if you want to perform actions on traffic traversing many zone contexts, you have to configure zone security policies for each possible context
	* instead use global policies that will not require the use of zone context to perform actions on traffic
