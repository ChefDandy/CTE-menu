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

Actions taken:
8:56 Beacon on it8, setup.exe using user latonya.prince
9:35 attrib +h on payload
9:46 mimikatz failed, look for FaultBucket log
10:04 process inject into java, if they dont see the java, ignore
10:15 mimikatz failed again
10:28 New setup.exe process using user Administrator
10:51 Scheduled task query
11:02 Scheduled task persistence and deleted the scheduled task from monday (oops)
11:36 New process for setup.exe
11:48 wmi connection to hr16
11:59 wmi connection to hr16
12:11 wmi connection to hr8
12:31 wmi connection to hr8, I gave up
12:31 beacon was downloaded using browser
12:35 beacon on hr8, sethcc.exe using user: marion.mullins
12:58 attrib +h on sethcc.exe
1:32 mimikatz
1:51 Healthy Task
2:11 Get-wmiobject to get domain name
2:21 wmi failed again
2:51 Resolve-DnsName technogizmos.com

9:11 Seatbelt
9:30 Upload psexec to hr8
9:40 psexec to file server (fail)
9:50 Spawned two processes for sethcc, one with elevated creds, one to launch as admin
10:05 Don't care anymore, uploading psexec to it8
10:14 it8 - psexec to file server
10:55 file - Compressing folder failed
2:21 file - process inject into svchost (SYSTEM) and wudfhost (LOCAL SERVICE)
2:52 file - Script to recursively delete all files on C:\
2:54 it8 - psexec to mail server
3:22 mail - process inject into two instances of svchost (SYSTEM)
3:31 mail - Script to recursively delete all files on C:\
3:34 mail - Shut down computer forcefully
