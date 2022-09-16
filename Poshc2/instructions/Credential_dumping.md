# [Credential Dumping]()

## **Exploit Description:** 
Adversaries may attempt to dump credentials to obtain account login and credential material, normally in the form of a hash or a clear text password, from the operating system and software. Credentials can then be used to perform Lateral Movement and access restricted information

## **Exploit syntax:**
```powershell
mimikatz Command "privilege::debug sekurlsa::logonPasswords"
```
>***Note***: *You must have a system level implant to perform this.*

---

## **Detection Technique:**
* Look for any reference to mimikatz
    * Sysmon code 13 may be seen to change the registry for sysinternals `"EulaAccepted"` 
* Look for sysmon `event.code: 10` that is interacting with `lsass.exe`
* Look for sysmon `event.code: 8` that is interacting with `lsass.exe`