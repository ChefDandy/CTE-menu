# [Parent PID Spoofing](https://attack.mitre.org/techniques/T1134/004/)

## Exploit syntax:


```powershell

inject-shellcode <PID of process to inject into>

```

## Detection Technique:
* Look for inconsistencies between the various fields that store PPID information, such as the EventHeader ProcessId from data collected via Event Tracing for Windows (ETW), Creator Process ID/Name from Windows event logs, and the ProcessID and ParentProcessID

