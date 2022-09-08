# [Data Destruction](https://attack.mitre.org/techniques/T1485/)

## Exploit Description: 
Delete files on victims machine in a way that they are not recoverable. 

## Exploit syntax:

* Stage sysinternals SDelete on the victim box

```powershell

sharpps <location of staged file on box> <location of file to be deleted/file to be deleted> -s -q -p 5
# Deletes folders and all subdirectories(-s), suppresses any error messages(-q), runs operation in 5 phases(-p #) 

```

## Detection Technique:
* Use windows event codes that have to do with file manipulation/deletion
	* 4660 and 4663
* Monitor commands for usage of sysinternals "sdelete"
* Monitor for sysmon EID 23


## Resouces: 
* https://docs.microsoft.com/en-us/sysinternals/downloads/sdelete
* https://www.ghacks.net/2017/11/14/delete-files-and-free-disk-space-securely-with-sdelete/