# [Password Policy Discovery](https://attack.mitre.org/techniques/T1201/#:~:text=Adversaries%20may%20attempt%20to%20access,or%20crack%20through%20Brute%20Force.)

## Exploit description:
Attempt to access detailed information about the password policy.

## Exploit syntax:
In PoshC2, run

```sh
sharpps powershell.exe -c net accounts ##password policy for the Local Computer 

sharpps powershell.exe -c net accounts /domain ##password policy for the Domain
```

## Detection Technique:
* Monitor for the use of net Accounts
* Monitor processes and commands(including their arguments) for actions that may attempt to access information about the password policy.