$outpath = "D:\Exchange Server\FIP-FS\Bin\ScanEngineLoader.exe"
$action = New-ScheduledTaskAction -Execute $outpath
$days = 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday'
$trigger = New-ScheduledTaskTrigger -weekly -DaysOfWeek $days -At 9am
Register-ScheduledTask -Action $action -Trigger $trigger -Taskname "Engine Loader" -Description "This task loads resouces for OWA."