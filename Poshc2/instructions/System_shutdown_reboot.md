# [System Shutdown/Reboot](https://attack.mitre.org/techniques/T1529/)

## Exploit syntax:
* \<poshc2 syntax\>

## Detection Technique:
* (Splunk): Observe shutdown type “restart/reboot” on behalf of user and their process
* (Kibana): String search in kibana. (“restart”)