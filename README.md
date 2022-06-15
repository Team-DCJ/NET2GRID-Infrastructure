![download](https://user-images.githubusercontent.com/97761340/173932706-c7da9967-46a8-4831-9713-b3c58a93a692.png). 

## **NET2GRID-Infrastructure**
### This is the README for DCJ's NET2GRID infrastructure project.   
This repo contains: 
* The README.md file.  
* Project agreement markdown file.   
* Powershell script.  

***

### Project Members:  
* Devin Iverson
<img width="163" alt="Screen Shot 2022-06-15 at 2 31 50 PM" src="https://user-images.githubusercontent.com/97761340/173933557-ef79ddd3-509a-4512-b5c4-eb21a1cf5e34.png">

***

* Christopher Marco
<img width="179" alt="Screen Shot 2022-06-15 at 2 32 08 PM" src="https://user-images.githubusercontent.com/97761340/173933602-031170f0-4e4c-44db-98c2-561f75ae0ea7.png">

***

* Jeremy Burks
<img width="185" alt="Screen Shot 2022-06-15 at 2 31 59 PM" src="https://user-images.githubusercontent.com/97761340/173933613-31c270d8-e63a-4179-aaaf-151c7780eaac.png">

***

### Below is the Porject scenario with outlined objectives:   
Scenario B: NET2GRID

* Your team is tasked with updating the core IT infrastructure of a recent GlobeX acquisition, NET2GRID. NET2GRID is a young, innovative company that offers leading-edge AI and machine learning services in energy insights based on smart meter data whose vision of a world with sustainable energy aligns well with the mission of GlobeX; unfortunately, its IT systems do not.

* Because NET2GRID currently lacks a client-server, domained network, your team is assigned with developing a repeatable means of standing up a DC to oversee NET2GRID's network. The AD will need to automatically populate users and OUs in accordance with the organizational chart below:
![image](https://user-images.githubusercontent.com/97761340/173932387-e6c44e9d-af93-4a7c-b265-67242cd221fd.png)
* ***Objective:*** Develop as a team a singular Powershell script that, when executed on a new installation of Windows Server, can fully standup all requisite services to make the server into a DC. Minimum required components of the script are listed in the Project Guidelines document. Each individual of the team is to contribute their share of the overall script and document their individual contribution. The final script should reflect an equal effort from all team members.

For the purposes of this project, only a single Windows 10 endpoint is required for demonstrating synchronization with the domain.

* NET2GRID wishes to host some of its infrastructure on AWS EC2. A client-server VPN configuration will prove necessary to facilitate secure remote authentication to AWS EC2 resources.

* ***Objective:*** Build a working client-server VPN loadout from AWS EC2. Successfully connect a Windows 10 client to the AWS VPC. Demonstrate access to resources on AWS.
Finally, NET2GRID has experienced a number of network intrusions in the past which has caused management to be concerned with the idea of sharing LAN resources with AWS EC2. They've requested your team implement some form of network access control that provides a healthy level of AAA security management on their local on-prem LAN. Your upcoming presentation should demonstrate evidence of AAA in your final configuration.

* ***Objective:*** Deploy a RADIUS system that raises a captive portal for new network users and authenticates them using AD credentials.  
For this IT project, your primary point of contact will be Carol Danvers, Chief Operations Officer (COO) at NET2GRID. Carol has been a critical contributor and decision-maker during this complex acquisition process, and can provide you with more detailed requirements as your progress through the project.
