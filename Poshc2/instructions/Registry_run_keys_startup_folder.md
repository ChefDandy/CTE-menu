# [Registry Run Keys / Startup Folder](https://attack.mitre.org/techniques/T1547/001/)

## Folder Locations: 
HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run
HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\RunOnce
C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp
C:\Users[Username]\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup

## Exploit syntax:
* Reference [Modify registry](/Poshc2/instructions/Modify_registry.md) for syntax to add a key to run or runonce keys within victim registry

* Reference [Redundant access](/Poshc2/instructions/Reduntant_access.md) for syntax to add files to folder locations

## Detection Technique:
* Investigating registry Run and Startup folder