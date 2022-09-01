# [Hidden files and directories](https://attack.mitre.org/techniques/T1564/001/)

## Exploit syntax: 
In PoshC2, run
```sh
sharpps echo hiddenjibberish > <Filepath on Victim> ##Echo returns its argument and its being put into a new file

sharpps attrib +h <Filepath of created file on Victim> ##Changes the permissions on the file chosen
```
## Detection technique:
* view file attribute manipulation via attrib.exe
    * process.name:\*attrib.exe\*

