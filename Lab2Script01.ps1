$interface = Read-Host "Interface name"
$ipaddy = Read-Host "Ip Address"
$defaultaddy = Read-Host "default gateway"
$computername = Read-Host "computer name"
$serveraddy = Read-Host "server addy"


New-NetIPAddress -InterfaceAlias $interface -IPAddress $ipaddy -PrefixLength 24 -DefaultGateway $defaultaddy
Set-DnsClientServerAddress -InterfaceAlias "Ethernet0" -ServerAddresses $serveraddy
Rename-Computer -NewName $computername