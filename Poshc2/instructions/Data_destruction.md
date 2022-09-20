# [Data Destruction](https://attack.mitre.org/techniques/T1485/)

## **Exploit syntax:**

1. Stage sysinternals `SDelete` on the victim box
	```powershell 
	upload-file
	```
	> **NOTE:** Upload `SDelete` with a diffrent file name for obfuscation
2. Use `SDelete` to remove any files
	```powershell
	sharpps <location of staged file on box> <location of file to be deleted/file to be deleted> -s -q -p 5
	# Deletes folders and all subdirectories(-s), suppresses any error messages(-q), runs operation in 5 phases(-p #) 
	```

---

## **Detection Technique:**
* Use windows event codes that have to do with file manipulation/deletion
	* 4660 and 4663
* Monitor commands for usage of sysinternals "sdelete"
* Monitor for sysmon ID 23

---
## **Resouces:** 
* https://docs.microsoft.com/en-us/sysinternals/downloads/sdelete
* https://www.ghacks.net/2017/11/14/delete-files-and-free-disk-space-securely-with-sdelete/