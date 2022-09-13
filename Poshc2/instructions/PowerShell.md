# Powershell

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
    * Create a datatable to filter by user.name

### `Sharpps` Specific Notes 
* Due to the nature of `Sharpps` running in memory, some action might be not appear with obvious evntcode to tie the actions to an alert. However the actions may still triget alerts off the result of what was executed. 

* When we run the following command we dont see `get-computerindo` in out kibana logs. 

```powershell 
sharpps get-computerinfo
```
![img](/Resources/Images/powershell_named_pipe_ipc.png#center)

* However you can see an event.action:`Powershell Named Pipe IPC` was created. With some further investigation we can see that this is tied to our beacon pid in the message block

---

## Resources
* https://www.ired.team/offensive-security/privilege-escalation/windows-namedpipes-privilege-escalation
  * Explains the use of `powershell named pipes`  