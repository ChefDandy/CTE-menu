# [File Deletion](https://attack.mitre.org/techniques/T1070/004/)

## Exploit Description: 
Adversaries may delete files left behind by the actions of their intrusion activity. Malware, tools, or other non-native files dropped or created on a system by an adversary may leave traces to indicate what was done within a network and how. Removal of these files can occur during an intrusion, or as part of a post-intrusion process to minimize the adversary's footprint

## Exploit syntax:
* poshc2 - powershell “cmd.exe del <filename> 
	* you will get an opsec warning, accept it and continue

## Detection Technique:
* Look for the ‘del’ command from cmd
* Look for a secondary process that will do the deletion
* Powershell’s “Remove-Item” does not show up in logs. 
* Investigate Event ID 4660