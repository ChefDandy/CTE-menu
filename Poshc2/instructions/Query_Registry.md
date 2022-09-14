# [Query registry](https://attack.mitre.org/techniques/T1012/)

## Exploit syntax:
  
 In Posh, run
```powershell
Sharpps REG QUERY <PATH OF KEY TO QUERY>
```

---

## Detection Technique:
* Observe Situational Awareness commands such as  reg.exe
* (Kibana): Utilize string searches for reg.exe queries
    * “reg.exe” and “query” or "C:\\Windows\\system32\\reg.exe" and "query"

* Monitor processes, commands, and arguments for actions that interact with the Windows Registry to gather information about the system

--- 

## Resources