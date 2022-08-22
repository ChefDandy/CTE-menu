# [Registry Run Keys / Startup Folder](https://attack.mitre.org/techniques/T1547/001/)

## Folder Locations: HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run
HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\RunOnce
C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp
C:\Users[Username]\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup

## Exploit syntax:
* \<poshc2 syntax\>

## Detection Technique:
* Investigating registry Run and Startup folder