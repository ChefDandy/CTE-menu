# [Peripheral Device Discovery](https://attack.mitre.org/techniques/T1120/)

## Prerequisites to Exploit:

1. You must enable Windows Subsystem for Linux before you can run fsutil. Run the following command as Administrator in PowerShell to enable this optional feature:
    * (Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux)
2. You'll be prompted to restart your computer once it's installed. After your computer restarts, you'll be able to run Fsutil as an administrator.

## Exploit syntax: 

In Posh, run 
```sh
sharpps get-pnpdevice ## Shows all plug and play devices
```
Or in Posh, run
```sh
sharpps get-pnpDevice -PresentOnly ## Show only present connections
```

## Detection Techniques:

* Look at the access to any class with the ‘PnP’(windows plug and play) reference.
* Monitor for newly executed processes and commands that may attempt to gather information about attached peripheral devices and components connected to a computer system.