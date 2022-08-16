# [Spearfishing Attachment](https://attack.mitre.org/techniques/T1566/001/)

## Exploit syntax:

* Example: Send-MailMessage -SmtpServer <smtp server ip> -Port 25 -to <enter email here> -From <enter email here> -Priority High -Subject "enter subject here" -Body "enter body of message here" -Attachment “<absolute path of resume file>” (file can be drag and dropped at the end of the command to autofill file path) OR Email through Outlook and attach malicious file to email

## Resource: https://www.slipstick.com/outlook/securetemp-files-folder/


## Detection Techniques

* Search for files within the Content.Outlook folder. Potentially look for files created following an email.
    * file.path: *Content.Outlook*
    * Look in the mail log at the MIME type for the file of the email.