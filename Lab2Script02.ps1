$Userfirst = Read-Host "User first name: "
$Usersec = Read-Host "user second name: "
$userlogon = Read-Host "user log-in name"



New-ADUser iiscooladm -GivenName "i" -Surname "iscool" -SamAccountName "i.iscool-adm" -UserPrincipalName "i.iscool-adm" -AccountPassword(Read-Host -AsSecureString "enter password" ) -Enabled $true
echo "useradmin made"
Add-ADGroupMember -Identity "Domain Admins" -Members i.iscool-adm
echo "added to admin group"

Add-DnsServerResourceRecordA -Name "fw01-henry" -CreatePtr -ZoneName "henry.local" -AllowUpdateAny -IPv4Address "10.0.5.2" 
echo "Record A made"
Add-DnsServerResourceRecordPtr -Name 'fw01-Henry' -ZoneName "10.0.5.in-addr.arpa" -PtrDomainName "fw01-henry.henry.local" -ComputerName "fw01-henry.henry.local"-AllowUpdateAny 
echo "ptr for record a made"
ping fw01-henry.henry.local
