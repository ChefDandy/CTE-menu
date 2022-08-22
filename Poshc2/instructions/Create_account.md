# [Create account](https://attack.mitre.org/techniques/T1136/)

## Exploit syntax:
* net user /add [username] [password]

## Detection Technique:
* Investigate account creation via the net.exe process. Looking for Event ID 4720 if an account is created on a windows system.
* event.code:4720

