net stop "TeamViewer"

wmic product where "name = 'Teamviewer 12 Host'" call uninstall /nointeractive
wmic product where "name = 'Teamviewer 12 Host (MSI Wrapper)'" call uninstall /nointeractive

reg delete HKLM\SOFTWARE\TeamViewer /f
reg delete HKLM\SOFTWARE\WOW6432Node\TeamViewer /f
reg delete HKU\.DEFAULT\Software\Wow6432Node\TeamViewer /f
reg delete HKU\.DEFAULT\Software\TeamViewer /f
reg delete HKU\S-1-5-18\Software\TeamViewer /f
reg delete HKU\S-1-5-18\Software\Wow6432Node\TeamViewer /f
reg delete HKU\S-1-5-18\Software\TeamViewer /f
exit