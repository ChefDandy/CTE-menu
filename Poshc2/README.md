# PoshC2 Super Menu 

![confusion](../Resources/gifs/confused-no.gif)

---
## **Resources**
- [Poshc2 github Link](https://github.com/nettitude/PoshC2)  
- [Poshc2 Help](poshC2_help_v8.md)
- [SharpView](https://github.com/tevora-threat/SharpView)
- [detecting-poshc2-indicators-of-compromise](https://labs.nettitude.com/blogdetecting-poshc2-indicators-of-compromise/)
- [Nettitude Poshc2 IOCs](https://github.com/nettitude/PoshC2_IOCs)

### Custom Poshc2 PSLO Scripts

[PSLO Scripts](Poshc2/pslo_scripts/README.md)

### Poshc2 Capabilities:
> **NOTE:** all `Menu Items` have links in the title to their MITRE pages for more information on the events.  

| Menu Item                                                                                                      | tested | Detections | Completed | Notes                                                     |
|----------------------------------------------------------------------------------------------------------------|--------|------------|-----------|-----------------------------------------------------------|
| [Accessibility Features](instructions/Accessibility_features.md)                                               | YES    | YES        | YES       | Reviewed                                                  |
| [Account Discovery](instructions/Account_Discovery.md)                                                         | YES    | YES        | YES       | Reviewed                                                  |
| [Account Manipulation](instructions/Account_manipulation.md)                                                   | YES    | YES        | YES       | Reviewed                                                  |
| [Alternate Data Streams](/Poshc2/instructions/Alternate_Data_Streams.md)                                       | YES    | YES        | YES       | Reviewed                                                  |
| [Application Window Discovery](instructions/Application_windows_discorvery.md)                                 | YES    | YES        | YES       | Reviewed                                                  |
| [BITS Jobs](instructions/BITS_Jobs.md)                                                                         | YES    | YES        | YES       | Reviewed                                                  |
| [Browser Bookmark Discovery](instructions/Browser_bookmark_discovery.md)                                       | YES    | YES        | YES       | Reviewed                                                  |
| [Create Account](instructions/Create_account.md)                                                               | YES    | YES        | YES       | Reviewed                                                  |
| [Credential Dumping](instructions/Credential_Dumping.md)                                                       |        |            | YES       | Reviewed/DANGER                                           |
| [Data Destruction](instructions/Data_destruction.md)                                                           | YES    | SOMEWHAT   | YES       | Reviewed                                                  |
| [Data from Local System](instructions/Data_from_local_system.md)                                               | YES    | NONE       | YES       | Reviewed                                                  |
| [Data Staged](instructions/Data_Staged.md)                                                                     | YES    | SOMEWHAT   | YES       | Reviewed                                                  |
| [Domain Trust Discovery](/Poshc2/instructions/Domain_Trust_Discovery.md)                                       | YES    | YES        | YES       | Reviewed                                                  |
| [Drive-by Compromise](/Poshc2/instructions/Drive-by_compromise.md)                                             | YES    | YES        | YES       | Reviewed                                                  |
| [Dynamic Data Exchange](instructions/Dynamic_Data_Exchange.md)                                                 |        |            | SURE      | Reviewed                                                  |
| [Exfiltration Over Command and Control Channel](instructions/Exfiltration_over_command_and_control_channel.md) | YES    | YES        | YES       | Reviewed                                                  |
| [Exploitation for Privilege Escalation](instructions/Exploitation_for_privilege_escalation.md)                 | YES    | YES        | YES       | Reviewed                                                  |
| [File and Directory Discovery](instructions/FIle_and_directory_discovery.md)                                   | YES    | NONE       | YES       | Reviewed                                                  |
| [File and Directory Permissions modification](instructions/File_And_Directory_Permissions_Modification.md)     | YES    | YES        | YES       | Reviewed                                                  |
| [File Deletion](instructions/File_deletion.md)                                                                 | YES    | NONE       | YES       | Reviewed                                                  |
| [Hidden Files and Directories](instructions/Hidden_files_and_directories.md)                                   | YES    | NONE       | YES       | Reviewed                                                  |
| [Image File Execution Options Injection](/Poshc2/instructions/Image_file_execution_options_injection.md)       | YES    | YES        | YES       | Review                                                    |
| [Input Capture](/Poshc2/instructions/Input_capture.md)                                                         | YES    | NONE       | YES       | Reviewed                                                  |
| [Job Scheduling](instructions/Job_Scheduling.md)                                                               | YES    | YES        | YES       | Reviewed                                                  |
| [Login item](instructions/Login_item.md)                                                                       | YES    | YES        | YES       | Reviewed                                                  |
| [Logon script](instructions/Logon_Scripts.md)                                                                  | YES    | YES        | YES       | Reviewed                                                  |
| [Modify registry](instructions/Modify_registry.md)                                                             | YES    | YES        | YES       | Reviewed syntax                                           |
| [Mshta.exe](instructions/MSHTA.MD)                                                                             | YES    | YES        | YES       | Reviewed                                                  |
| [Network Service Scanning](/Poshc2/instructions/Network_Service_scanning.md)                                   | YES    | YES        | YES       | Reviewed                                                  |
| [Network Share Discovery](instructions/Network_share_discovery.md)                                             | YES    | YES        | YES       | Reviewed                                                  |
| [New service / service execution](instructions/New_Service_Server_Execution.md)                                | YES    | YES        | KINDA     | Reviewed                                                  |
| [Password Policy Discovery](instructions/Password_policy_discovery.md)                                         | YES    | YES        | YES       | Reviewed                                                  |
| [Path interception](instructions/Path_Interception.md)                                                         | YES       | YES           | YES     | Reviewed                                 |
| [Parent PID Spoofing](instructions/Parent_PID_spoofing.md)                                                     | YES    | SOMEWHAT   | KINDA     | Reviewed                                                  |
| [Peripheral Device discovery](instructions/Peripheral_Device_Discovery.md)                                     | YES       | YES           | YES     | Reviewed                            |
| [Permission Groups Discovery](/Poshc2/instructions/Permission_groups_discovery.md)                             | YES       | YES           | YES     | Reviewed                                 |
| [Powershell](instructions/PowerShell.md)                                                                       | YES    | SOMEWHAT   | YES       | Reviewed                                                  |
| [Process Discovery](instructions/Process_Discovery.md)                                                         | YES    | YES        | KINDA     | Updated detection Method/ needs testing for linux/ review |
| [Process Injection](instructions/Process_injection.md)                                                         | YES    | YES        | KINDA     | Detection Methods/Review                                  |
| [Query registry](instructions/Query_Registry.md)                                                               | YES    | YES        | KINDA     | Detection methods/Review                                  |
| [Redundant access](instructions/Reduntant_access.md)                                                           | YES    | YES        | KINDA     | Updated syntax/needs verification                         |
| [Registry Run Keys / Startup Folder](instructions/Registry_run_keys_startup_folder.md)                         | YES    | YES        | KINDA     | Updated syntax/Detection methods needed?                  |
| [Regsvr32](/Poshc2/instructions/Regsvr32.md)                                                                   | YES    | YES        | KINDA     | Review                                                    |
| [Remote Desktop Protocol](instructions/Remote_desktop_protocol.md)                                             | YES    | YES        | KINDA     | Review                                                    |
| [Rundll32](instructions/Rundll32.md)                                                                           | YES    | YES        | YES       | Reviewed                                                  |
| [Scripting](instructions/Scripting.md)                                                                         | YES    | YES        | YES       | Reviewed                                                  |
| [Services Registry Permissions Weakness](instructions/Service_registry_permissions_weakness.md)                | YES    | YES        | KINDA     | Updated syntax/ Review                                    |
| [Spearphishing attachment](instructions/Spearfishing_attachment.md)                                            |        |            | NOPE      | Initial import/needs mime type                            |
| [Spearphishing link](instructions/Spearfishing_Link.md)                                                        |        |            | NOPE      | Initial import/ needs verification                        |
| [System Information Discovery Win](/Poshc2/instructions/System_Information%20_Discovery_Win.md)                | YES    | YES        | KINDA     | Review                                                    |
| [System Shutdown/Reboot](instructions/System_shutdown_reboot.md)                                               | YES    | YES        | KINDA     | review                                                    |
| [System Time Discovery](instructions/System_time_discovery.md)                                                 | YES    | YES        | KINDA     | Review                                                    |
| [Valid accounts](instructions/Valid_accounts.md)                                                               |        |            | NOPE      | Initial import/needs review                               |
| [Windows Management Instrumentation](instructions/Windows_Managment_Instrumentation.md)                        | YES    | YES        | KINDA     | DETECTION ADDED                                           |
| Paragraph                                                                                                      |        |            | NOPE      | DOG                                                       |


## WIP Menu 
| Menu Item     | tested | Detections | Completed | Notes |
|---------------|--------|------------|-----------|-------|
| [something]() |        |            | NOPE      | NOPE  |
