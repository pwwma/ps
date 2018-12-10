
clear-host

$cs = Get-WmiObject -class Win32_ComputerSystem

$Sockets=$cs.numberofprocessors
$Cores=$cs.numberoflogicalprocessors


Write-host "Sockets: $Sockets"
Write-host "Cores: $Cores"

