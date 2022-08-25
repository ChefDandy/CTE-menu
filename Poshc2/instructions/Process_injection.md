# [Process injection](https://attack.mitre.org/techniques/T1055/)

## Exploit Description: 
Adversaries may inject code into processes in order to evade process-based defenses as well as possibly elevate privileges. Process injection is a method of executing arbitrary code in the address space of a separate live process. Running code in the context of another process may allow access to the process's memory, system/network resources, and possibly elevated privileges. Execution via process injection may also evade detection from security products since the execution is masked under a legitimate process

## Exploit syntax to migrate to a different process:
 ```powershell 
 migrate
 ```

## Exploit syntax to PrivEsc:
> ***Note***: Your current priveleges must include `SeDebugPrivilege` and `SeImpersonatePrivilege` 
>> *These should be the default for users in the `Administrators group`*

```powershell
inject-shellcode <PID>
    <name_of_shellcode.bin>
```
> *Be mindful of the SYSTEM owned process you are injecting into, as it may not have enough memory to execute your shellcode* 
---

## Detection Technique:
1. Sysmon event code 8 is the creation of a remote process thread
2. Sysmon event code 10 is process access
3. Investigate restarting processes.

---

## Resources:
[Process Injection Theory](https://secarma.com/process-injection-part-1-the-theory/)
