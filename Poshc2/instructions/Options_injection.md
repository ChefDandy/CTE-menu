# [Options Injection](https://attack.mitre.org/techniques/T1546/012/)

## Exploit syntax:
* <poshc2 syntax>

## Detection techniques:

* Monitor for abnormal usage of the GFlags tool as well as common processes spawned under abnormal parents and/or with creation flags indicative of debugging such as DEBUG_PROCESS and DEBUG_ONLY_THIS_PROCESS

* Monitor for any registry changes to HKLM\Software\Microsoft\CurrentVersion\Windows NT\Image File Execution Options\
**Note:**Detection method doesn't match execution method. Verify this