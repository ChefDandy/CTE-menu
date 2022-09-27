# [Permission Groups Discovery](https://attack.mitre.org/techniques/T1069/)

## Exploit Description: 
Find group and permission settings


## Exploit syntax:
In PoshC2, Run
```sh
sharpps powershell.exe net group /domain 
##Enumerate all domain groups

sharpps powershell.exe -c "net group /domain 'Domain Admins'" ##Enumerate domain group members

sharpps powershell.exe -c "net user /domain 'Domain Admins' billy.bob" 
##View the permissions of a particular domain user

Sharpps powershell.exe net localgroup 
##View Local groups on Computer



```
## Detection Technique:
* Monitor for newly constructed processes and/or command-lines for actions that could be taken to gather system and network information
* Monitor for commands ran in WMI and Powershell related to group enumeration.
* Monitor for net.exe. 
* Kibana can utilize string searches:
    * "net.exe"
    * process.parent.name: net.exe
