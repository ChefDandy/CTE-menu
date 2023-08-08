# [New Service / Service execution](https://attack.mitre.org/techniques/T1569/002/)

## Exploit Syntax:
 
1. get-system
2. choose payload
3. Once implant is established:
```powershell
sharpps New-Service -Name "TestProcess" -BinaryPathName "C:\temp\testfile.exe" -Description "Test run" -StartupType Automatic
```

 * Note: if attempting to use "sc" or service controller with powershell, specify it as "sc.exe" as "sc" is an alias for "Set-Content"

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
* Look for edits to the registry. Event ID:
    * 13: Registry value set

## Resources:
https://pentestlab.blog/2019/10/07/persistence-new-service/