$A = Get-EventLog -LogName Security -InstanceId 4625 -Newest 5

$A | Select-Object -Property * > C:\Windows\Temp\failedLogins.txt