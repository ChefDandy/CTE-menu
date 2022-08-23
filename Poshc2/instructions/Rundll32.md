# [Rundll32](https://attack.mitre.org/techniques/T1218/011/)

## Exploit syntax:

```powershell 
sharpsc SERVER01 service "cmd /c rundll32.exe test.dll,Ep" domain username password
```
---

## Detection Technique:
* Investigate uses of rundll32 to start non typical processes such as cmd.exe or to access non typical dlls.

---

## Resource
* https://lolbas-project.github.io/lolbas/Binaries/Rundll32/