# [Spearfishing Link](https://attack.mitre.org/techniques/T1566/002/)

## Exploit Syntax:
* Send a link in the body of an email

## Detection Technique
* Investigate instances of outlook.exe as the parentimage and iexplore as the child process or current directory is within Microsoft office.
    * Outbound network connections to suspicious domains after accessing an email.