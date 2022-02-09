$out = @()
$yesterday = (get-date) - (new-timespan -day 5)
$servers = Get-Content -Path c:\windows\temp\servernames.txt
foreach ($server in $servers)
{
    $out += Get-WinEvent -ComputerName $server -MaxEvents 20 -FilterHashTable @{LogName = 'Security'; Data = "kathy.tatum"; ID = 4771} -ErrorAction SilentlyContinue | Select-Object -Propery *
}

$out | Out-File c:\windows\temp\Kathy_Tatum_Issues.txt -NoTypeInformation
