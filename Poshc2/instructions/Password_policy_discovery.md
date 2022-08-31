# [Password Policy Discovery](https://attack.mitre.org/techniques/T1201/#:~:text=Adversaries%20may%20attempt%20to%20access,or%20crack%20through%20Brute%20Force.)

## Exploit description:
Attempt to access detailed information about the password policy.

## Exploit syntax:
In PoshC2, run

```sh
sharpps net accounts ##password policy for the Local Computer 

sharpps net accounts /domain ##password policy for the Domain
```

## Detection Technique:
* Attempt to access detailed information about the password policy.
