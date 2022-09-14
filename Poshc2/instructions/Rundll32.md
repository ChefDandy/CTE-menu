# [Rundll32](https://attack.mitre.org/techniques/T1218/011/)

## Exploit syntax:

```powershell 
1. Create a powershell script and save it to /tmp/christBeaver.txt

2. In posh run:
    ```
    add-hosted-file
    
    /tmp/christBeaver.txt

    /text

    text/html
    
    N
    ```

3. On your beacon, run:
    ```
    
4. Save the file with as` NoobNoob.ps1` to `/tmp` on parrot-vm
5. Run
	```sh
	sudo ch

## Detection Technique:
* Investigate uses of rundll32 to start non typical processes such as cmd.exe or to access non typical dlls.

---

## Resource
* https://lolbas-project.github.io/lolbas/Binaries/Rundll32/1`