#Devin I.

#Create Organization Units based on department from csv file
$OUs = Import-Csv "C:\NET2GRID-PS-Scripts\OUs_List.csv"

foreach ($ou in $OUs)
{
	$Name = $($OU.OUs)
    New-ADOrganizationalUnit -Name $Name -Path "dc=globex,dc=com"
}

#Store data from server_users.csv in the $ADUsers variable
$Users = Import-csv "C:\NET2GRID-PS-Scripts\NET2GRID-users.csv"
$FailedCount = 0
$PassCount = 0 

#Loop by each row containing user details in the csv file
foreach ($User in $Users) 
{
	$Username = $User.username
    $Firstname = $User.firstname
    $Lastname = $User.lastname
    $Department = $User.department
    $OU = $User.path
    $Description =$User.description
    $Manager = $User.manager
    $Company = $User.company
    $Title = $User.title
	
	#check if user already exists
	if (Get-ADUser -f {SamAccountName -eq $Username}) 
	{
		Write-Warning "A user account with username $Username already exists in Active Directory."

        # increment FailedCount for each user was attempted but already existed
        $FailedCount++
        
	}
	else {
		#User does not exist, proceed to create user		

		New-ADUser `
        -SamAccountName $Username `
        -UserPrincipalName "$Username@GlobeX.com" `
        -Name "$Firstname $Lastname" `
        -GivenName $Firstname `
        -Surname $Lastname `
        -Title $Title `
        -Description $Description `
        -Manager $Manager `
        -Company $Company `
        -DisplayName $Username `
        -Department $Department `
        -Path $OU `
        -AccountPassword (ConvertTo-SecureString -String "Password01" -AsPlainText -Force) `
        -Enabled $True `
        -ChangePasswordAtLogon $True 

        # increment PassCount for each successfull user created
		$PassCount++

	} #end else statement
}
Write-Output ""
Write-Output "$PassCount users created, $FailedCount users already existed."
