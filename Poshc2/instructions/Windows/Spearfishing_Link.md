# [Spearfishing Link](https://attack.mitre.org/techniques/T1566/002/)

## Exploit Syntax:

* Using the [SendPhishingLink](/Poshc2/pslo_scripts/Purple_pslo_scripts/SendPhishingLink.ps1) script:
    
    1. Make any changes to the link contained within the `$body` variable to the appropriate hosted file URI.
    2. Execute the powershell script.

## Detection Technique
* Investigate instances of outlook.exe as the parentimage and iexplore as the child process or current directory is within Microsoft office.
    * Outbound network connections to suspicious domains after accessing an email.