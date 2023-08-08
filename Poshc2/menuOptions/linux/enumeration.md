Enumerating Distribution and Version
```
cat /etc/issue
cat /etc/*-release
cat /etc/lsb-release
cat /etc/redhat-release
```
Enumerating Kernel Version
```
cat /proc/version   
uname -a
uname -mrs
rpm -q kernel
dmesg | grep Linux
```
Enumerating all the environment variables
```
env 
```
Enumerating the CPU, memory, and disk details: 
```
cat /proc/cpuinfo 
free -m 
df -h 
```
Enumerating Environmental Variables
```
env
set
cat /etc/profile
cat /etc/bashrc
cat ~/.bash_profile
cat ~/.bashrc
cat ~/.bash_logout
cat ~/.zshrc
```
Enumerating Applications and Services
```
ps aux
ps -elf
top
cat /etc/service
```
Enumerating Services running as Root
```
ps aux | grep root
ps -elf | grep root
```
Enumerating Installed Applications
```
dpkg -l
dpkg -l PACKAGE-NAME
rpm -qa
```
Enumerating Scheduled Jobs
```
crontab -l
cat /etc/cron*
cat /etc/cron.d/*
cat /etc/cron.daily/*
cat /etc/cron.hourly/*
cat /etc/cron.monthly/*
cat /etc/crontab
cat /etc/at.allow
cat /etc/at.deny
cat /etc/anacrontab
```
Enumerating Network Interfaces
```
ifconfig
ip link
ip addr
/sbin/ifconfig -a
cat /etc/network/interfaces
cat /etc/sysconfig/network
```
Enumerating Network Configuration Settings
```
cat /etc/resolv.conf
cat /etc/sysconfig/network
cat /etc/networks
iptables -L
hostname
dnsdomainname
```
Enumerating Users and Hosts (Network Communication)
```
lsof -i
lsof -i :80
netstat -antup
netstat -antpx
netstat -tulpn
chkconfig --list
chkconfig --list | grep 3:on
last
w
```
Enumerating Users and Hosts
```
id
who
w
last
cat /etc/passwd    # List of users
cat /etc/sudoers
sudo -l
```
Enumerating group, hashes, users
```
cat /etc/passwd    # User accounts
cat /etc/group     # Groups
cat /etc/shadow    # Password hashes
```
Enumerating User Activity
```
cat ~/.bash_history
cat ~/.zsh_history
cat ~/.nano_history
cat ~/.atftp_history
cat ~/.mysql_history
cat ~/.php_history
```
Enumerating Private Keys
```
cat ~/.ssh/*
```
# Check other user directories too!

Enumerating SUIDs for files with root level permissions (Privesc)
```
find / -perm -4000 -user root -exec ls -ld {} \; 2> /dev/null
```

Enumerating World Writable Folders and Files
```
find / -xdev -type d -perm -0002 -ls 2> /dev/null
find / -xdev -type f -perm -0002 -ls 2> /dev/null
```
Enumerating Development Tools
```
which perl
which python
which python3
which gcc
```
# Can look for binaries not in search path
```
# find / -name perl*
# find / -name python*
# find / -name gcc*
# find / -name cc
```
Enumerating Unmounted File Systems
```
cat /etc/fstab
```
Enumerating Mounted File Systems
```
mount
df -h
```
Enumerating Egress
```
which wget
which nc
which netcat
# Can look for binaries not in search path
# find / -name wget
# find / -name nc*
# find / -name netcat*
```