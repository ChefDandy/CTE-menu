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
| [Accessibility Features](menu options/Windows/Accessibility_features.md)                                               | YES    | YES        | YES       | Reviewed                                                  |
| [Account Discovery](menu options/Windows/Account_Discovery.md)                                                         | YES    | YES        | YES       | Reviewed                                                  |
| [Account Manipulation](menu options/Windows/Account_manipulation.md)                                                   | YES    | YES        | YES       | Reviewed                                                  |
| [Alternate Data Streams](/Poshc2/menu options/Windows/Alternate_Data_Streams.md)                                       | YES    | YES        | YES       | Reviewed                                                  |
| [Application Window Discovery](menu options/Windows/Application_windows_discorvery.md)                                 | YES    | YES        | YES       | Reviewed                                                  |
| [BITS Jobs](menu options/Windows/BITS_Jobs.md)                                                                         | YES    | YES        | YES       | Reviewed                                                  |
| [Browser Bookmark Discovery](menu options/Windows/Browser_bookmark_discovery.md)                                       | YES    | YES        | YES       | Reviewed                                                  |
| [Create Account](menu options/Windows/Create_account.md)                                                               | YES    | YES        | YES       | Reviewed                                                  |
| [Credential Dumping](menu options/Windows/Credential_Dumping.md)                                                       |        |            | YES       | Reviewed/DANGER                                           |
| [Data Destruction](menu options/Windows/Data_destruction.md)                                                           | YES    | SOMEWHAT   | YES       | Reviewed                                                  |
| [Data from Local System](menu options/Windows/Data_from_local_system.md)                                               | YES    | NONE       | YES       | Reviewed                                                  |
| [Data Staged](menu options/Windows/Data_Staged.md)                                                                     | YES    | SOMEWHAT   | YES       | Reviewed                                                  |
| [Domain Trust Discovery](/Poshc2/menu options/Windows/Domain_Trust_Discovery.md)                                       | YES    | YES        | YES       | Reviewed                                                  |
| [Drive-by Compromise](/Poshc2/menu options/Windows/Drive-by_compromise.md)                                             | YES    | YES        | YES       | Reviewed                                                  |
| [Dynamic Data Exchange](menu options/Windows/Dynamic_Data_Exchange.md)                                                 |        |            | SURE      | Reviewed                                                  |
| [Exfiltration Over Command and Control Channel](menu options/Windows/Exfiltration_over_command_and_control_channel.md) | YES    | YES        | YES       | Reviewed                                                  |
| [Exploitation for Privilege Escalation](menu options/Windows/Exploitation_for_privilege_escalation.md)                 | YES    | YES        | YES       | Reviewed                                                  |
| [File and Directory Discovery](menu options/Windows/FIle_and_directory_discovery.md)                                   | YES    | NONE       | YES       | Reviewed                                                  |
| [File and Directory Permissions modification](menu options/Windows/File_And_Directory_Permissions_Modification.md)     | YES    | YES        | YES       | Reviewed                                                  |
| [File Deletion](menu options/Windows/File_deletion.md)                                                                 | YES    | NONE       | YES       | Reviewed                                                  |
| [Hidden Files and Directories](menu options/Windows/Hidden_files_and_directories.md)                                   | YES    | NONE       | YES       | Reviewed                                                  |
| [Image File Execution Options Injection](/Poshc2/menu options/Windows/Image_file_execution_options_injection.md)       | YES    | YES        | YES       | Review                                                    |
| [Input Capture](/Poshc2/menu options/Windows/Input_capture.md)                                                         | YES    | NONE       | YES       | Reviewed                                                  |
| [Job Scheduling](menu options/Windows/Job_Scheduling.md)                                                               | YES    | YES        | YES       | Reviewed                                                  |
| [Login item](menu options/Windows/Login_item.md)                                                                       | YES    | YES        | YES       | Reviewed                                                  |
| [Logon script](menu options/Windows/Logon_Scripts.md)                                                                  | YES    | YES        | YES       | Reviewed                                                  |
| [Modify registry](menu options/Windows/Modify_registry.md)                                                             | YES    | YES        | YES       | Reviewed                                                  |
| [Mshta.exe](menu options/Windows/MSHTA.MD)                                                                             | YES    | YES        | YES       | Reviewed                                                  |
| [Network Service Scanning](/Poshc2/menu options/Windows/Network_Service_scanning.md)                                   | YES    | YES        | YES       | Reviewed                                                  |
| [Network Share Discovery](menu options/Windows/Network_share_discovery.md)                                             | YES    | YES        | YES       | Reviewed                                                  |
| [New service / service execution](menu options/Windows/New_Service_Server_Execution.md)                                | YES    | YES        | KINDA     | Reviewed                                                  |
| [Password Policy Discovery](menu options/Windows/Password_policy_discovery.md)                                         | YES    | YES        | YES       | Reviewed                                                  |
| [Path interception](menu options/Windows/Path_Interception.md)                                                         | YES    | YES        | YES       | Reviewed                                                  |
| [Parent PID Spoofing](menu options/Windows/Parent_PID_spoofing.md)                                                     | YES    | SOMEWHAT   | KINDA     | Reviewed                                                  |
| [Peripheral Device discovery](menu options/Windows/Peripheral_Device_Discovery.md)                                     | YES    | YES        | YES       | Reviewed                                                  |
| [Permission Groups Discovery](/Poshc2/menu options/Windows/Permission_groups_discovery.md)                             | YES    | YES        | YES       | Reviewed                                                  |
| [Powershell](menu options/Windows/PowerShell.md)                                                                       | YES    | SOMEWHAT   | YES       | Reviewed                                                  |
| [Process Discovery](menu options/Windows/Process_Discovery.md)                                                         | YES    | YES        | KINDA     | Updated detection Method/ needs testing for linux/ review |
| [Process Injection](menu options/Windows/Process_injection.md)                                                         | YES    | YES        | KINDA     | Detection Methods/Review                                  |
| [Query registry](menu options/Windows/Query_Registry.md)                                                               | YES    | YES        | KINDA     | Detection methods/Review                                  |
| [Redundant access](menu options/Windows/Reduntant_access.md)                                                           | YES    | YES        | KINDA     | Updated syntax/needs verification                         |
| [Registry Run Keys / Startup Folder](menu options/Windows/Registry_run_keys_startup_folder.md)                         | YES    | YES        | KINDA     | Updated syntax/Detection methods needed?                  |
| [Regsvr32](/Poshc2/menu options/Windows/Regsvr32.md)                                                                   | YES    | YES        | KINDA     | Review                                                    |
| [Remote Desktop Protocol](menu options/Windows/Remote_desktop_protocol.md)                                             | YES    | YES        | KINDA     | Review                                                    |
| [Rundll32](menu options/Windows/Rundll32.md)                                                                           | YES    | YES        | YES       | Reviewed                                                  |
| [Scripting](menu options/Windows/Scripting.md)                                                                         | YES    | YES        | YES       | Reviewed                                                  |
| [Services Registry Permissions Weakness](menu options/Windows/Service_registry_permissions_weakness.md)                | YES    | YES        | KINDA     | Updated syntax/ Review                                    |
| [Spearphishing attachment](menu options/Windows/Spearfishing_attachment.md)                                            |        |            | NOPE      | Initial import/needs mime type                            |
| [Spearphishing link](menu options/Windows/Spearfishing_Link.md)                                                        |        |            | NOPE      | Initial import/ needs verification                        |
| [System Information Discovery Win](/Poshc2/menu options/Windows/System_Information%20_Discovery_Win.md)                | YES    | YES        | KINDA     | Review                                                    |
| [System Shutdown/Reboot](menu options/Windows/System_shutdown_reboot.md)                                               | YES    | YES        | KINDA     | review                                                    |
| [System Time Discovery](menu options/Windows/System_time_discovery.md)                                                 | YES    | YES        | KINDA     | Review                                                    |
| [Valid accounts](menu options/Windows/Valid_accounts.md)                                                               |        |            | NOPE      | Initial import/needs review                               |
| [Windows Management Instrumentation](menu options/Windows/Windows_Managment_Instrumentation.md)                        | YES    | YES        | KINDA     | DETECTION ADDED                                           |


## WIP Menu 
| Menu Item     | tested | Detections | Completed | Notes |
|---------------|--------|------------|-----------|-------|
| [something]() |        |            | NOPE      | NOPE  |
