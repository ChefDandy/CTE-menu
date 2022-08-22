# [Browser Bookmark Discovery](https://attack.mitre.org/techniques/T1217/)

## Exploit syntax:
1. Obtain implant into system
2. If unknown, determine the OS and browsers of the system
3. Based on the OS and browsers, execute the proper syntax below:
All untested

* Linux:
    * Mozilla:
        * invoke-command find / -path "*.mozilla/firefox/*/places.sqlite" 2>/dev/null -exec echo {} >> #{output_file} \; cat #{output_file} 2>/dev/null 
       
* MacOS
    * Mozilla
        * invoke-command find / -path "*.mozilla/firefox/*/places.sqlite" 2>/dev/null -exec echo {} >> #{output_file} \; cat #{output_file} 2>/dev/null
    * Chrome
        * invoke-command find / -path "*/Google/Chrome/*/Bookmarks" -exec echo {} >> #{output_file} \; cat #{output_file} 2>/dev/null
    * Safari
        * invoke-command find / -path "*/Safari/Bookmarks.plist" 2>/dev/null >> {output_file} cat #{output_file}


* Windows
    * Chrome/Opera
        * invoke-command Get-ChildItem -Path C:\Users\ -Filter Bookmarks -Recurse -ErrorAction SilentlyContinue -Force
    * Chrome/Edge
        * invoke-command where /R C:\Users\ Bookmarks
    * Mozilla
        * invoke-command where /R C:\Users\ places.sqlite
    * Internet explorer
        * invoke-command dir /s /b %USERPROFILE%\Favorites


## Detection Technique:
* Investigate any instances of a user accessing bookmark locations.

## Resources: 
https://github.com/redcanaryco/atomic-red-team/blob/master/atomics/T1217/T1217.md