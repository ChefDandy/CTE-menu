# [Data staged]()

## Exploit Description:
Collect data in a centralized location or directory prior to exfiltration. 

## Exploit syntax:
* N/A

## Detection Technique:
* Use of file transfer applications
    * (PuTTY, WinSCP) or over SSH to upload files to an unusual location.
* May require forensic analysis of the victim workstation itself to determine more information
* Look for sysmon event code 11, as well as windows events 4660 and 4663 on beacon activity to determine if files are being created, moved or deleted. 
* If the files are all being gathered into the same directory/directories, it is likely that data staging is 
