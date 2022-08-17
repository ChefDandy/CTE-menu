# [Redundant access](https://attack.mitre.org/techniques/T1133/)

## Folder Locations: 
* HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run
* HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\RunOnce
* C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp
* C:\Users[Username]\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup

## Exploit syntax:
* SCHTASKS /CREATE /SC DAILY /TN "MyTasks\Notepad task" /TR "Path to the executable you want to run" /ST 11:00

## Detection Technique:
* (Kibana): Use a string search to detect schtasks operating within the network. Then add process.command_line to the results column. This will allow for quick separation of uncommon scheduled tasks.
