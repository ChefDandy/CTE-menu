# [Password Policy Discovery](https://attack.mitre.org/techniques/T1201/)

## Exploit description:
Attempt to access detailed information about the password policy.

## Exploit syntax:
In PoshC2, run

```sh
net accounts 
##password policy for the Local Computer 

net accounts /domain 
##password policy for the Domain
```

## Detection Technique:
* Monitor for the use of net Accounts
* Monitor processes and commands(including their arguments) for actions that may attempt to access information about the password policy.
* Kibana:
    * process.args: \*accounts\*
    * process.parent.name: net.exe
        * These will show if run directly in powershell via a script, but not from sharpps/implant