# [Scripting](https://attack.mitre.org/techniques/T1059/)

## Exploit syntax:
* \<poshc2 syntax\>

## Detection Technique:
* Investigate scripts run on the network, powershell, batch, bash, python, any scripting language.
    * process.command_line:*.bat OR process.command_line:*.sh OR process.command_line:*.ps1 ………

