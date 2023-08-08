# [Command and Scripting Interpreter: Powershell](https://attack.mitre.org/techniques/T1059/001/)

## Exploit syntax

1. Poshc2 - Any powershell command given, however poshc2 powershell may not be detectable. 

```powershell 
sharpps get-computerinfo
```

```powershell 
sharpps get-item 
```

---

## Detection Technique 

1. Investigate powershell running at a user level.
* process.name: *powershell.exe*  AND NOT (user.name: Administrator OR user.name:SYSTEM)
    * Create a data table to filter by user.name
>*Note*: It's important to understand that Administrator or SYSTEM running powershell.exe is not always indicative of being benign.

### `Sharpps` Specific Notes 
* Due to the nature of `Sharpps` running in memory, some actions might be not appear with obvious eventcode to tie the actions to an alert. However the actions may still trigger alerts off the result of what was executed. 

* When we run the following command we dont see `get-computerindo` in our kibana logs. 

```powershell 
sharpps get-computerinfo
```
![img](/Resources/Images/powershell_named_pipe_ipc.png#center)

* However you can see an event.action:`Powershell Named Pipe IPC` was created. With some further investigation we can see that this is tied to our beacon pid in the `message` field

---

## Resources
* https://www.ired.team/offensive-security/privilege-escalation/windows-namedpipes-privilege-escalation
  * Explains the use of `powershell named pipes`  