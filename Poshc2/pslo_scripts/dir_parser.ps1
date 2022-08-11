#Create a new doc on the 

Get-Childitem -Path C:\ -Include *.TXT,*.PDF,*.JPG,*.MP3,*.TMP -Exclude *Collaberation*.* -File -Recurse -ErrorAction SilentlyContinue >> C:\Windows\Temp\Win10-version-755.log
