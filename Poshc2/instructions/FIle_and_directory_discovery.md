# [File and Directory Discovery](https://attack.mitre.org/techniques/T1083/)

## Exploit description
Enumerate files and directories

## Exploit syntax:

```powershell

sharpps ls

sharpps dir

```



## Detection Technique:
* Investigate commands that are commonly utilized to enumerate the network.
    * Examples: 
        * ls, find, dir, tree, locate, findstr, get-content, get-childitem
* Above commands may use environmental variables such as:
    * %SystemRoot%, %LOCALAPPDATA%, %SYSTEMDRIVE%, etc
