# [Process Discovery](https://attack.mitre.org/techniques/T1057/)

## Exploit Syntax

```powershell 
# This command can be ran in posh and it will return a list of processes running:
ps

# PowerShell has a built in commandlet as well
sharpps get-process

# If the victim is running windows, you can run native windows commands
sharpps tasklist <any arguments you would like to add>

# If the victim is running a linux flavored box, you can run these commands:<untested>
sharpps pstree

sharpps ps
```
---
## Detection Method
* Can reference [Application windows discovery](/Poshc2/instructions/Application_windows_discorvery.md) detection methods for basic overview of what applications are seen running.

* Event.code: 1
* process.args: C:\windows\system32\tasklist.exe



---
## Resources

* https://docs.microsoft.com/en-us/windows-server/administration/windows-commands/tasklist

* https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.management/get-process?view=powershell-7.2

* https://man7.org/linux/man-pages/man1/ps.1.html

* https://man7.org/linux/man-pages/man1/pstree.1.html

