# [Browser Bookmark Discovery](https://attack.mitre.org/techniques/T1217/)

## Exploit syntax:
1. Obtain implant into system
2. If unknown, determine the OS and browsers of the system
3. Based on the OS and browsers, execute the proper syntax below:


---

## Windows
*  Chrome
    ```powershell
    sharpps Get-ChildItem -Path C:\Users\ -Filter Bookmarks -Recurse -ErrorAction SilentlyContinue -Force
    ```
    * Once this command returns the locations of the bookmark location(s), Get-Content to those locations
    ```powershell
    sharpps Get-Content "C:\Users\<user from results>\AppData\Local\Google\Chrome\User Data\Default\Bookmarks" 
    ```   
    * Note, you may need to change the user for each bookmark location found. Pay attention to the file location
* Mozilla(untested)
    ```powershell
     
    ```
* Internet explorer(Windows 7)
    ```powershell
     sharpps Get-ChildItem -Path C:\Users\ -Filter Favorites -Recurse -ErrorAction SilentlyContinue -Force
    ```
    * Once the list is returned, you can ls to any of the returned locations to see the list of bookmarks. 
    ```powershell
    ls C:\Users\Administrator.BLDG1-1-WS24\Favorites
    ```
    * After you find the full list of bookmarks, pull the content of the bookmark to see the information on it
    ```powershell
    sharpps Get-Content "C:\Users\User1\Favorites\Cute Cat Pictures.url" 
    ```
---

## Linux:(untested)
* Mozilla:
    ```powershell
    sharpps find / -path "*.mozilla/firefox/*/places.sqlite" 2>/dev/null -exec echo {} >> #{output_file} \; cat #{output_file} 2>/dev/null 
    ```

---

## MacOS(untested)

* Mozilla
    ```powershell 
    sharpps find / -path "*.mozilla/firefox/*/places.sqlite" 2>/dev/null -exec echo {} >> #{output_file} \; cat #{output_file} 2>/dev/null
    ```
* Chrome
    ```powershell
    sharpps find / -path "*/Google/Chrome/*/Bookmarks" -exec echo {} >> #{output_file} \; cat #{output_file} 2>/dev/null
    ```
* Safari
    ```powershell 
    sharpps find / -path "*/Safari/Bookmarks.plist" 2>/dev/null >> {output_file} cat #{output_file}
    ```

---

## Detection Technique:
* Investigate any instances of a user accessing bookmark locations.
* Investigate use of executed commands and arguments for actions that could be taken to gather browser bookmark information
* 

---

## Resources: 
https://github.com/redcanaryco/atomic-red-team/blob/master/atomics/T1217/T1217.md