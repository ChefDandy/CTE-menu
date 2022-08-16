# [Logon scripts](https://attack.mitre.org/techniques/T1037/)

## Exploit syntax:

* <poshc2 syntax>

## Detections techniques:
* Investigate file creation in the default windows logon script location in the registry. HKCU\Environment\UserInitMprLogonScript