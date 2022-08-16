# [Peripheral Device Discovery](https://attack.mitre.org/techniques/T1120/)

## Prerequisites to Exploit:

1. You must enable Windows Subsystem for Linux before you can run fsutil. Run the following command as Administrator in PowerShell to enable this optional feature:
    * (Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux)
2. You'll be prompted to restart your computer once it's installed. After your computer restarts, you'll be able to run Fsutil as an administrator.

## Exploit syntax: 

* <poshc2 syntax>

## Detection Techniques:

* Look at the access to any class with the ‘PnP’(windows plug and play) reference.