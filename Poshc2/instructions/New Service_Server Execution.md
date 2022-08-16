# [New Service / Service execution](https://attack.mitre.org/techniques/T1569/002/)

## Exploit Syntax:
 
1. get-system
2. choose payload

## Detection Techniques 
* Investigate Windows event ID 7045 
    * New service installed(not always useful)
* Investigate Service Start and creation with sc 
    * sc start/ sc create
* Investigate PowerShell 
    * Install-ServiceBinary -ServiceName
* Investigate sc.exe usage 
    * Service created
* Investiage Powershell service install
    * New-Service

## Resources:
https://pentestlab.blog/2019/10/07/persistence-new-service/