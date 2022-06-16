#Devin I.

# Create New Forest, add Domain Controller
$domainname = "GlobeX.com"
$netbiosName = "GLOBEX"

Install-ADDSForest `
-CreateDnsDelegation:$false `
-DomainName $domainname `
-DomainNetbiosName $netbiosName `
-SafeModeAdministratorPassword (ConvertTo-SecureString -String "Password01" -AsPlainText -Force) `
-Force:$true

Restart-Computer -ComputerName NET2GRID-DC1 -Wait
