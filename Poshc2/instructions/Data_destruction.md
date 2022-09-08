# [Data Destruction](https://attack.mitre.org/techniques/T1485/)

## Exploit Description: 
Delete files on victims machine

## Exploit syntax:
```powershell

```

## Detection Technique:
* Use windows event codes that have to do with file manipulation/deletion
	* 4660 and 4663
* Monitory commands for usage of sysinternals "sdelete"
* 