# [Account Manipulation](https://attack.mitre.org/techniques/T1098/)

## **LOCAL USER Exploit syntax:**
1. Get a beacon with local/domain administrative privileges.

2. In parrot open a blank text file and paste the following commands into it
    ```powershell
    net user /add Gearhead Squanch123;
    ```
    ```powershell
    net localgroup administrators /add Gearhead;
    ```

3. Save the file with as `Pencilvester.ps1` to `/tmp`

4. Run
	```sh
	sudo chmod +x /tmp/Pencilvester.ps1
	```

5.  In posh, run
    ```powershell
	pslo /tmp/Pencilvester.ps1
    ```
> **NOTE:** that the above .ps1 file syntax and be modified to change the users password, delete the user, added to a different group(using net localgroup), etc
## **DOMAIN USER Exploit syntax:**

---

## **Detection Technique:**
* Monitor windows events related to account manipulation

* Winlogbeat:
    * Event.code: 1
  
    * process.args
      *  C:\windows\system32\net.exe, user, /add, Gearhead, Squanch123 

    * process.command_line
	    * "C:\windows\system32\net.exe" user /add Gearhead Squanch123
  
    * process.executable
	    * C:\Windows\System32\net.exe

    * Event.code: 4720
        * (added user account)
  
    * Event.code: 4726
        * (deleted user account)
  
    * Event.code: 4738
        * (modified user account such as password change)
  
    * Event.code: 4732
        * (added user account to Administrators group)
  
    * Event.code:4733
      * (deleted user account from Administrators group)
    
    
    
