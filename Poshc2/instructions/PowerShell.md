# Powershell

## Exploit syntax

1. Poshc2 - Any powershell command given, however poshc2 powershell may not be detectable. 

## Detection Technique 

1. Investigate powershell running at a user level.
* process.name: *powershell.exe*  AND NOT (user.name: Administrator OR user.name:SYSTEM)
    * Create a datatable to filter by user.name
