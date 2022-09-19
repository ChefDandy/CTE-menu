# [System Information Discovery](https://attack.mitre.org/techniques/T1082/)

## Exploit Syntax
In Poshc2, run
```sh
get-computerinfo 
##Returns Computer info :)

sharpps syteminfo 
##Alternative Info to the command above(more digestable)
```

### Detection Method
* Monitor newly executed processes that may attempt to get detailed information about the operating system and hardware, including version, patches, hotfixes, service packs, and architecture

### Resources