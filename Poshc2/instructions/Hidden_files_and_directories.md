# [Hidden files and directories](https://attack.mitre.org/techniques/T1564/001/)

## Exploit syntax: 

1.  echo text > hiddenfile.txt
2.  Attrib +h hiddenfile.txt

## Detection technique:
* view file attribute manipulation via attrib.exe
    * process.name:\*attrib.exe\*

