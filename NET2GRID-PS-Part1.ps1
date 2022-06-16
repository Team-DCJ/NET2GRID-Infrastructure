#Chris M.

#New-NetIPAddress –IPAddress 10.0.0.100 -DefaultGateway 10.0.0.1 -PrefixLength 24 -InterfaceIndex (Get-NetAdapter).InterfaceIndex
#sets static IP

#set-DnsClientServerAddress -InterfaceIndex (Get-NetAdapter).InterfaceIndex -ServerAddresses (10.0.0.10)
#sets dns serveraddress


#Jeremy B.

#Rename-Computer NET2GRID-DC1 -Restart
#Renames the server then restarts the OS to enable changes

#Install-windowsfeature -name AD-Domain-Services -IncludeManagementTools
#Installs Active Directory Domain Services with management tools



#Install AD DS, DNS and GPMC
start-job -Name addFeature -ScriptBlock {
Rename-Computer NET2GRID-DC1 
Add-WindowsFeature -Name "ad-domain-services" -IncludeAllSubFeature -IncludeManagementTools 
Add-WindowsFeature -Name "dns" -IncludeAllSubFeature -IncludeManagementTools 
Add-WindowsFeature -Name "gpmc" -IncludeAllSubFeature -IncludeManagementTools
New-NetIPAddress -IPAddress 10.0.0.100 -DefaultGateway 10.0.0.1 -PrefixLength 24 -InterfaceIndex (Get-NetAdapter).InterfaceIndex
Set-DnsClientServerAddress -InterfaceIndex (Get-NetAdapter).InterfaceIndex -ServerAddresses (10.0.0.10) }
Wait-Job -Name addFeature

Restart-Computer
