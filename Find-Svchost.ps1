Get-WmiObject win32_service | where {$_.Started -eq "True" -and $).ServiceType -eq "Share Process"} | select Name, ProcessID | Sort-Object ProcessId

