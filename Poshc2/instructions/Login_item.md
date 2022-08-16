# [Login item](https://attack.mitre.org/techniques/T1547/015/)

## Exploit syntax:

* SCHTASKS /CREATE /SC ONLOGON /TN "MyTasks\Notepad task" /TR "Path to the executable you want to run" /ST 11:00

## Detection Technique
* Investigate file creation in the default windows task folder - C:\Windows\System32\Tasks folder.
