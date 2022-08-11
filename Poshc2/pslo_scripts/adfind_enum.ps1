$output="$env:temp\logs"
$loc = "$env:userprofile\downloads\AdFind\AdFind.exe"
$arg = @("-f objectcategory=person","-f objectcategory=group","-f objectcategory=computer","-f objectcategory=organizationalUnit")

for($i = 1; $i -lt $arg.length; $i++){

start-process -filepath $loc -argumentlist $arg[$i] -RedirectStandardOutput "$output$i.txt" -WindowStyle Hidden

} 

start-sleep -s 15
Compress-Archive -Path "$output*.txt" -DestinationPath "$env:temp\comtest.zip"
remove-item "$output*.txt"