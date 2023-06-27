# Timestamp Manipulation

## **Exploit Description:**

Timestomping is a technique that modifies the timestamps of a file (the modify, access, create, and change times), often to mimic files that are in the same folder. This is done, for example, on files that have been modified or created by the adversary so that they do not appear conspicuous to forensic investigators or file analysis tools.

## Command Syntax
```

touch -t YYYYMMDDhhmm file

touch -t 200001011200 file will set the timestamps the 01st of January 2000, at 12:00.

You can set a file’s timestamp identically to another file’s. touch -r file1 file2 will set to file2 the file1’s timestamps.

If you want to make file2 50 seconds older than file1, use touch -r file1 -B 50 file2.

To set file2 50 seconds newer to file1, use touch -r file1 -F 50 file2.


timedatectl set-time '2000-01-01' to modify system time, as a more obfuscated method of editing timestamps

timesdatectl set-ntp 0 to disable ntp, making it harder to detect.  This can be turned back on after exploitation with enable.



```

## Detection Techniques

For touch, you can look in the tracker3 database

“sqlite3 <filename> .dump | grep <filename>”

nie:Created time correlates with actual file creation time.  fileCreated and fileLastModified can differ.

Rules can also be configured to catch it in auditD with following,

#timestomp

-w /usr/bin/touch -p x -k timestomp

-w /tmp -k timechange

Alt,

Kibana queries

process where event.type == "start" and process.name : "touch" and
user.id != "0" and process.args : ("-r", "-t", "-a*","-m*") and not
process.args : ("/usr/lib/go-*/bin/go", "/usr/lib/dracut/dracut-
functions.sh", "/tmp/KSInstallAction.*/m/.patch

alt

process where event.type in ("start", "process_started") and
process.name == "touch" and wildcard(process.args, "-r", "-t",
"-a*","-m*")

```

```