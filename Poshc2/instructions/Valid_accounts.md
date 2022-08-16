# [Valid accounts](https://attack.mitre.org/techniques/T1078/)

## Exploit syntax:

* with a system level callback “invoke-mimikatz” to acquire valid accounts. Any implant using a user’s creds is valid accounts.

## Detection Technique:
* Look for files manipulated while the adversary is on the box, using regular user accounts.
    * (Kibana): Winlog Index= “event.code:4720”
        * The event.type reveals the account was created. The related user shows the account that created the new user, then the account that was created.