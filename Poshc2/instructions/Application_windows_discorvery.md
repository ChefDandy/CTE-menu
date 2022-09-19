# [Application Window Discovery](https://attack.mitre.org/techniques/T1010/)

## **Exploit syntax:**

  
### **List processes**
```powershell
getprocesslist
```

```powershell 
ps 
```
### **Get a process**
```powershell 
getprocess <explore>
```

```powershell 
sharpps get-process 
```
### **Powershell Implant Commands**
```powershell
tasklist
```
>*Note*: With a powershell implant, running tasklist will invoke the tasklist.exe application, which is detectable in kibana

---

## **Detection Technique:**
* Look for any process enumeration (ls / get-process / tasklist)
* Kibana:
    * process.args: <command and/or arguments>
        * process.args: "C:\windows\system32\tasklist.exe"
    > *Note*: You can also view the `process.command_line` field to view what was ran by the process.
    * Event.code: 1
    * process.parent.args: *
        * Will detect if the process was called by another, as opposed to using cmd directly on the box

---

## **Resources**