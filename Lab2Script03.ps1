New-NetIPAddress -InterfaceAlias "Ethernet0 2" -IPAddress "10.0.5.100" -PrefixLength 24 -DefaultGateway "10.0.5.2"
Set-DnsClientServerAddress -InterfaceAlias "Ethernet0 2"  -ServerAddresses 10.0.5.5
echo "******hostname******"
hostname
echo "******whoami******"
whoami
echo "******ping fw02******"
ping fw01-henry.henry.local
echo "******nslookup******"
nslookup fw01-henry.henry.local

