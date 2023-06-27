# Account Shell Modification

## **Exploit Description:**

Modify the user to change the default shell.

## Comaand Syntax
```
sudo useradd -D -s /bin/bash
```
Verify:
```
sudo useradd -D | grep -i shell
```

## Detection Techniques
```

```