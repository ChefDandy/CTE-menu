# [Logon scripts](https://attack.mitre.org/techniques/T1037/)

## Exploit syntax:
In Poshc2, run
```sh
upload-file -source /tmp/test.exe -destination "c:\temp\test.exe" #Upload your batch file on the box


```
## Detections techniques:
* Investigate file creation in the default windows logon script location in the registry. HKCU\Environment\UserInitMprLogonScript
* Event ID 4657 is made when the registry is modified