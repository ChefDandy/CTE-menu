# [Data from Local System](https://attack.mitre.org/techniques/T1005/)

## Exploit Description: 
Adversaries may search local system sources, such as file systems or local databases, to find files of interest and sensitive data prior to Exfiltration.

## Exploit syntax:
```powershell
download-file "<path>"

ls "<path>"

get-content "<path>/file.txt"
```
>***Note***: *Without the carrots, but with the double quotes* 
---
## Detection Technique:
* Any remote manipulation of the local system, normally observed after seeing a compromised system.
* Monitor for access to unexpected or abnormal access to files that may be maliciously collected
    * User files (pdf, .docx, .jpg, etc) and/or local databases
* Monitor for processes that may be used to search the file system
* Monitor for attempts to enable scripting