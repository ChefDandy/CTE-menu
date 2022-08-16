# [Account Discovery](https://attack.mitre.org/techniques/T1087/)

## Exploit Syntax


### - `Sharpview`
```powershell
sharpview Get-NetUser -SamAccountName ben
```
```powershell
sharpview Get-NetGroup -Name *admin* -Domain -Properties samaccountname,member -Recurse
```
```powershell
sharpview Get-NetGroupMember -LDAPFilter GroupName=*Admins* -Recurse -Properties samaccountname
```
### - `PS`

```powershell 
ps net use
```

---

## Detection Methods

* you dont 

---

## Resrouces