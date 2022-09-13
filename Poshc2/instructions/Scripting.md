# [Scripting](https://attack.mitre.org/techniques/T1059/)

## Exploit syntax:
1. Create the .ps1
    ```
    sudo vi /var/posh/<project>/payloads/dumbBug.ps1
    ```

2. Paste in the following
    ```powershell
    remove-item C:\NeverLeftShoneys.ps1
    ```

3.  In posh:
    ```
    upload-file

    dumbBug.ps1
    
    C:\NeverLeftShoneys.ps1
    ```
4. Execute the script
    ```
    sharpps powershell.exe -executionpolicy bypass C:\NeverLeftShoneys.ps1
    ```


## Detection Technique:
* Investigate scripts run on the network, powershell, batch, bash, python, any scripting language.
    * process.command_line:*.bat OR process.command_line:*.sh OR process.command_line:*.ps1 ………

