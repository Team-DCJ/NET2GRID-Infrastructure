
## Deliverables

***

### How the core network services will be administered 
The core network services will be administered through Azure cloud using Microsoft Windows server as domain controller with AD, as well as endpoints within the network that can be securely accessed remotely using tailscale VPN connection for RDP and SSH access. Network access will be controlled using RADIUS server with captive portal in addition to company issued YubiKeys for AAA security. 

***

### How will OS version control be handled? 
Within Azure we will use Azure Automation Update Management

***

### Describe in detail how OS version control will be handled centrally from a server-based solution 
* Get a status report on Azure systems
* Review update assessment, define deployment schedule, and review update status
* Activate Automation account
* Check for maintenance window and deployment
* Apply updates

***

### Windows Server:
* IP: 10.0.0.100
* Subnet Mask: 255.255.255.0
* DHCP Range: 10.0.0.1 - 10.0.0.254

### Windows Endpoint:
* IP: 10.0.0.5
* Subnet Mask: 255.255.255.0
* DHCP Range: 10.0.0.1 - 10.0.0.254

### Linux Server:
* IP: 192.168.18.74
* Subnet Mask: 255.255.255.0
* DHCP Range: 192.168.18.1 - 192.168.18.254




