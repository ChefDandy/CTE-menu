# [Drive-by Compromise](https://attack.mitre.org/techniques/T1189/)

## Exploit syntax:
* Launch BeEF on kali and connect on port 3000/demos/basic.html and use beef’s social engineering exploit to mimic gmail login.
* \<poshc2 syntax\>

## Detection Technique:
* Investigate connections with unusually large urls and to known bad ip
* Investigate connections that the url.original and the http request field differ
