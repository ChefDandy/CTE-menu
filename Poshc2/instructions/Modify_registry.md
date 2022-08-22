# [Modify Registry]()

## Exploit Description:
Adversaries may interact with the Windows Registry to hide configuration information within Registry keys, remove information as part of cleaning up, or as part of other techniques to aid in persistence and execution.

## Exploit syntax:
* \<poshc2 syntax\>

## Detection Technique:
* Investigate any reg command. Reg is for registry querying and manipulation
* Event ID 4657 is made when the registry is modified