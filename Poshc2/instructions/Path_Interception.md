# [Path Interception](https://attack.mitre.org/techniques/T1574/007/)

## Exploit syntax:
* Powershell “cmd.exe set PATH=<injecting path>;%PATH%”

## Detection Technique:
* Investigate all instances of any process attempting to manipulate the ‘PATH’ variable inside a windows environment.
