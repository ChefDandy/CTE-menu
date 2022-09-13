# [Drive-by Compromise](https://attack.mitre.org/techniques/T1189/)

## Exploit syntax:

1. Add hosted file in poshc2 
    ```powershell 
    add-hosted-file
    ```
2. Set file parameters 
  

3. Have victim browse to malicious link created.

---

## Detection Technique:
* Investigate connections with unusually large urls and to known bad ip
* Investigate connections that the url.original and the http request field differ
* Investigate event ids for `Network connection`
  * Sysmon 3
* Investigate `FileCreate` event id
  * Sysmon 11

---

## Resources