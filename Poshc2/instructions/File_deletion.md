# [File Deletion](https://attack.mitre.org/techniques/T1070/004/)

## Exploit Description: 
Adversaries may delete files left behind by the actions of their intrusion activity. Malware, tools, or other non-native files dropped or created on a system by an adversary may leave traces to indicate what was done within a network and how. Removal of these files can occur during an intrusion, or as part of a post-intrusion process to minimize the adversary's footprint

## Exploit syntax:
In PoshC2, run
```sh
posh-delete <file path on Victim> #built in posh command
```

```sh
sharpps remove-item <File path on Victim> #Powershell cmdlet

sharpps powershell.exe del <Path>
```


## Detection Technique:
* Look for a secondary process that will do the deletion
* Powershell’s “Remove-Item" does not show up in logs. 

### posh-delete detection methods
* when deleting file using poshc2 built in command you get a `event.code:2` when expecting a `filedelete`
  * File creation time changed (rule: FileCreateTime) event.code 2