# [Alternte Data Streams](https://attack.mitre.org/techniques/T1564/004/)

## **Syntax**

For execution you can refrence both of the following menu items.20_Discovery_Win  
    
* [Rundll32](Poshc2/instructions/Rundll32.md)
* [Regsrv32](Poshc2/instructions/Regsvr32.md)

By default, all files have a stream $DATA. 

If you would like to add an additional datastream to a file, you may run:
```powershell
Set-Content <"location of file"> -Stream <"The name you want to display"> -value <"Potentially, location of malware or data to exfil"> 
```

You may view a files streams by with the following command:
```powershell
get-item <"location of file"> -stream *
```

If you see a datastream that you would like more information on, run:

```powershell
get-content <"location of file"> -stream <"name of the datastream">
```
If the alternate datastream is a path to another file to run, you can run it with:

```powershell
start-process (get-content <"location of file"> -stream <"name of the datastream">)
```


The resource below also highlights a large selction of Alternate Data Streams which can be used.


---

## **Resources**
* https://gist.github.com/api0cradle/cdd2d0d0ec9abb686f0e89306e277b8f
* https://www.deepinstinct.com/blog/the-abuse-of-alternate-data-stream-hasnt-disappeared
* https://jdhitsolutions.com/blog/scripting/8888/friday-fun-with-powershell-and-alternate-data-streams/