Get-WmiObject win32_service | where {$_.Started -eq "True" -and $_.ServiceType -eq "Share Process"} | select Name, ProcessID | Sort-Object ProcessId > c:\windows\temp\processRun.txt

