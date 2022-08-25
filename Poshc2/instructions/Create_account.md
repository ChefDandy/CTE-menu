# [Create account](https://attack.mitre.org/techniques/T1136/)

## Exploit syntax:

1. Obtain implant into system
2. If unknown, determine the OS of the system
3. Based on the OS, execute the proper syntax below:

* Powershell (if installed on local system)
    * invoke-command New-LocalUser -Name "Jimmybob" -Password N33sdut5 -Description "Totally legitimate user." 
    

* Windows
    * invoke-command net user /add [username] [password]
* Linux
    * useradd [OPTIONS] USERNAME
        * NOTE: must be root or a user with sudo privileges 

## Detection Technique:
* Investigate account creation via the net.exe process. Looking for Event ID 4720 if an account is created on a windows system.
* event.code:4720
* Investigate /var/log/secure file for attempts to create users
