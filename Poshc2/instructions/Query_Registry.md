# [Query registry](https://attack.mitre.org/techniques/T1012/)

## Exploit syntax:
* reg query

## Detection Technique:
* Observe Situational Awareness commands such as  reg.exe
* (Kibana): Utilize string searches for reg.exe queries
    * “reg.exe” and “query” or "C:\\Windows\\system32\\reg.exe" and "query"
