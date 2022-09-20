# [System Shutdown/Reboot](https://attack.mitre.org/techniques/T1529/)

## Exploit syntax:
 In Posh, run 
 ```sh
 sharpps restart-computer ## Restarts computer in current implant.
```
or In Posh, run
```sh
 sharpps Stop-computer localhost ## Shutdown computer in current implant. 
 ```
## Detection Technique:
* (Splunk): Observe shutdown type “restart/reboot” on behalf of user and their process(untested)
* (Kibana): String search in kibana. 
    * query “restart”
* Check Event IDs in relation to Shutdowns/restarts. e.g 1076,1074, etc