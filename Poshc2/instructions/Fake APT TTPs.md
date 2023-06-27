## Filenames/Locations:
C:\Windows\System32\sethcc.exe

## Scheduled Task:
"Healthy Task", description "This task verifies that all other scheduled tasks are legitimate processes."

## Users:
Gearhead, then added to domain/local admin group

## Actions:
Use legitimate windows executable (attrib.exe) to hide payload exe
Upload Invoke-mimikatz.ps1 and perform credential dumping
Download credential dump output and delete files
Process Injection into svchost.exe
Lateral movement using wmic and certutil

## Plan:
1. Recon: nmap to scan for active hosts
2. Access: User accidentally navigated to a malicious link
3. Priv Esc with process injection
4. Persistence with schtask
5. Attrib +h on payload exe
6. Credential Dumping
7. Download/exfil
8. Lateral movement to file server
9. Persistence with schtask
10. Attrib +h
11. Data deletion