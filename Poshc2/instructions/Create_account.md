# [Create account](https://attack.mitre.org/techniques/T1136/)

## Exploit syntax:

1. Obtain implant into system
2. If unknown, determine the OS of the system
3. Based on the OS, execute the proper syntax below:

### Powershell via sharpps (if installed on local system):
```powershell
sharpps $cred=ConvertTo-SecureString -AsPlainText -Force -String "N33zDutz123"; New-LocalUser -Name "Bobbyjim" -Password $cred -Description "Totally legitimate user."
``` 
    

### Windows:
```bat
invoke-command net user /add [username] [password]
```
### Linux:
```bash
useradd [OPTIONS] USERNAME
```
>***NOTE***: must be root or a user with sudo privileges 

---
## Detection Techniques:
* Investigate account creation via the net.exe process. Looking for Event ID 4720 if an account is created on a windows system.
* event.code:4720
* Investigate /var/log/secure file for attempts to create users
