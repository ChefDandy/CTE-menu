# [File and Directory Permissions Modification](https://attack.mitre.org/techniques/T1222/)

## Exploit syntax:
* \<poshc2 syntax\>

## Detection Technique:
* Investigate any shell interface with the -hidden attribute, PsUACme is a known UAC cracking tool
* Investigate process.executable containing calcs.ex
* Investigate event ID 4670
    * created when the DACL is modified
