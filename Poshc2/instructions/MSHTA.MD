# [MSHTA.exe](https://attack.mitre.org/techniques/T1218/005/)

## Exploit Syntax: 

* 

    1. <poshc2 sytax>

    2. 
*

    1. 

    2. 


## Detection Technique

* Investigate any instances of mshta.exe, if it is common, investigate mshta.exe interacting with the compromised machine itself.
    * process.name: mshta.exe
    * Network Connection: Outbound
    * Event.Action: Process Create
    * Event.Type: start, process start
    * Winlog.task: File Creation
    * 

## Resources 
