# [Permission Groups Discovery](https://attack.mitre.org/techniques/T1069/)

## Exploit Description: 
Find group and permission settings


## Exploit syntax:
In PoshC2, Run
```sh
sharpps net group /domain ##Enumerate all domain groups

sharpps net group "Domain Admins" /domain ##Enumerate domain group members

Sharpps net localgroup ##View Local groups on Computer

```
## Detection Technique:
* Monitor executed commands and argumaents acquired through Window System management tools
