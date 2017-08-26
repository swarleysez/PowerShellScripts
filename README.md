# PowerShellScripts
PowerShell Scripts for Automated Tasks

This repository includes various scripts that assist in automating lab tasks.


# File: set_nic_dhcp_enabled.ps1
This file sets all enabled NICs to DHCP for all settings and displays the output of "ipconfig /all" upon completion.


# File: set_static_dns_localhost.ps1
This file sets the DNS settings to the static values in the script for all enabled NICs of the localhost. 
Modify $dns to your preferred DNS servers.

Ex. $dns = "192.168.1.100" , "192.168.1.101"

This script can also be used to modify all settings by changing the corresponding parameter to the preferred input.

Example.
$ip = "192.168.5.10"
$gateway = "192.168.5.1"
$subnet = "255.255.255.0"
$NIC.EnableStatic($ip, $subnet)
$NIC.SetGateways($gateway)
