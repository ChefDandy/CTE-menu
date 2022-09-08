# [Windows Managment Instrumentation](https://attack.mitre.org/techniques/T1047/)

## **Exploit Syntax**

Syntax:
```powershell 
wmiexec <ip> <domain.name> <domain.user> password=<password> "cmd"
```

Example 1:
```powershell
wmiexec 11.25.20.18 meetech.com administrator password=Simspace1!Simspace1! 
"cmd /c C:\windows\system32\mspaint.exe"
```
---

## **Detection Methods**

### Event Actions/Codes Created
* logged-in/ 4624
* logged-in-special/ 4672
* Process Create (rules: ProcessCreate)/ 1

### Services:
* WmiPrivSE.exe
* cmd.exe

### Example 1 | *Detection Explination*
* In example 1 we use poshc2 built in `wmiexec` command to get remote execution on another machine. When doing so we use WMI tool to kick off `mspaint.exe` using `cmd.exe`. Which leads to a the event actions addressed above (logged-in/logged-in-special, and proccess create). 

    ### Identifiable Items
    * remote host name/ip 
    *  logged-in / 4624
    * Users name and SID tied to execution.
    * logged-in-special / 4672
    * Application being executed 
    * Process Create (rules: ProcessCreate) / 1


---

## **Resources**
* 