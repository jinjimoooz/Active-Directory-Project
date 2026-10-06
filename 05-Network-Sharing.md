## Network Sharing

**Method 1: Manual Network Drive Mapping**

- Created a shared folder named SHARED on Windows Server and shared it with domain users.
  ![Shared Folder](Screenshots/Win-Server-2022_Shared-Folder-Creation.png)

- Mapped network drive (S:) on client laptop using the server's network share path
  ![Share to User](Screenshots/Win-Server-2022_Shared-to-User.png)

- Note: This method is for temporary access only. These mapped drives will be removed on clients after reboot/shutdown/restarts.

**Method 2: Network Sharing via Group Policy**

- Configured a GPO to automatically map the shared drive to domain users

![GPO Mapping](Screenshots/Win-Server-2022_Mapping-GPO.png)
![GPO Mapping](Screenshots/Win-Server-2022_Mapping-GPO-Done.png)

- Used gpupdate /force command on client before confirming if shared folder is present

![gpupdate](Screenshots/Win-Server-2022_gpupdate.png)
![Successful Mapping GPO](Screenshots/Win-Server-2022_Successful-GPO-Mapping.png)

**File Server Resource Manager (FRSM):**

- Utilized FSRM for management of shared folder storage

**Storage Quota Management:**

- Configured a 10MB storage on SHARED folder
- Configured notification threshold triggered at 80% storage capacity

![Quota Setup](Screenshots/Win-Server-2022_Quota-Setup.png)
![Threshold](Screenshots/Win-Server-2022_Quota-Threshold.png)

**File Screen Management:**

- Configured active file screening to restrict uploads and only allow .txt files to be saved in shared folder

![File Screen](Screenshots/Win-Server-2022_File-Screen.png)
