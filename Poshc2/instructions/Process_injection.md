# [Process injection](https://attack.mitre.org/techniques/T1055/)

## Exploit Description: 
Adversaries may inject code into processes in order to evade process-based defenses as well as possibly elevate privileges. Process injection is a method of executing arbitrary code in the address space of a separate live process. Running code in the context of another process may allow access to the process's memory, system/network resources, and possibly elevated privileges. Execution via process injection may also evade detection from security products since the execution is masked under a legitimate process

## Exploit syntax:
* \<poshc2 syntax\>

## Detection Technique:
1. Sysmon event code 8 is the creation of a remote process thread
2. Sysmon event code 10 is process access
3. Investigate restarting processes.
