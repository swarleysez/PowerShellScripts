#$NICs = Get-WMIObject Win32_NetworkAdapterConfiguration -computername . | where{$_.IPEnabled -eq $true -and $_.DHCPEnabled -eq $true}
$NICs = Get-WMIObject Win32_NetworkAdapterConfiguration -computername . | where{$_.IPEnabled -eq $true}
Foreach($NIC in $NICs) {
#$ip = ($NIC.IPAddress[0])
#$gateway = $NIC.DefaultIPGateway
#$subnet = $NIC.IPSubnet[0]
#$dns = $NIC.DNSServerSearchOrder
$dns = "172.16.1.100" , "172.16.1.101"
#$NIC.EnableStatic($ip, $subnet)
#$NIC.SetGateways($gateway)
$NIC.SetDNSServerSearchOrder($dns)
$NIC.SetDynamicDNSRegistration(“FALSE”)
}
IPConfig /all
