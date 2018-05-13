$NICs = Get-WMIObject Win32_NetworkAdapterConfiguration -computername . | where{$_.IPEnabled -eq $true}

Foreach ($NIC in $NICs)
{
  $dns = "172.16.1.100" , "172.16.1.101"
  $NIC.SetDNSServerSearchOrder($dns)
  $NIC.SetDynamicDNSRegistration(“FALSE”)
}

IPConfig /all
