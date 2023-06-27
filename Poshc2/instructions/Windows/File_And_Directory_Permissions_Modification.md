# [File and Directory Permissions Modification](https://attack.mitre.org/techniques/T1222/)

## Exploit syntax:

```powershell

sharpps icacls "C:\demo\example.txt" "/grant:r" "<GroupBeaconIsAPartOf>:(OI)(CI)F"

# Must be ran with administrator level privileges
sharpps takeown /f "C:\demo\example.txt"

sharpps attrib -r +h "C:\demo\example.txt"

```

## Detection Technique:
* Investigate any shell interface with the -hidden attribute, PsUACme is a known UAC cracking tool
* Investigate process.executable containing icalcs.exe
* Investigate if ACLs have been modified to evade detection
* Investigate event ID 4670
    * created when the DACL is modified

* Kibana query for these binaries being accessed by suspicious process
    * `process.name`: icacls.exe or `process.name`: attrib.exe or `process.name`: takeown.exe
    * `process.parent.name` : \<suspiciousProcess.exe>
    * Add `process.command_line` and `process.parent.command_line` as columns.



## Resources
* https://docs.microsoft.com/en-us/windows-server/administration/windows-commands/icacls

* https://docs.microsoft.com/en-us/windows-server/administration/windows-commands/takeown

* https://docs.microsoft.com/en-us/windows-server/administration/windows-commands/attrib