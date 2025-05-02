Inspired by the [**SillyTavern-SimpleBackupScript**](https://github.com/ContinuumOperand/SillyTavern-SimpleBackupScript) by [**ContinuumOperand**](https://github.com/ContinuumOperand).

## SillyTavern-BackupScript
Simple and effective batch and powershell scripts to backup your SillyTavern data.

## SillyTavern Backup Guide
### Prerequisites
* **`Currently the Windows files are the only ones that got tested! For Linux and Mac you have to try.`**
#### Windows
* You need to have [7zip](https://www.7-zip.org/download.html), [NanaZip](https://github.com/M2Team/NanaZip) ([MS-Store Link](https://apps.microsoft.com/detail/9n8g7tscl18r?hl=en-US&gl=US)) or zip installed.
* In order to run powershell scripts, you have to activate them in the Windows settings under **System --> Developer --> PowerShell** --> The Switch needs to be on **ON**.
#### Linux
* You need to have [7zip](https://www.7-zip.org/download.html) or zip installed.
#### MacOS
* You need to have [7zip](https://www.7-zip.org/download.html) or zip installed.
---
### Usage / Windows
* Download the zip archive and place it in your SillyTavern main folder.
* Unzip the archive- you now have 4 files, Backup.bat, Backup.ps1, Backup_Linux.sh and Backup_Mac.sh in your SillyTavern main folder.
* Delete the Backup_Linux.sh and Backup_Mac.sh.
* By default the following files and folders will get backed up:
  * \data\ folder (recursive)
  * \public\whitelist.txt
  * \config.yaml
  * \Backup.xx
  * \Start.bat
  * \UpdateAndStart.bat
  * \UpdateForkAndStart.bat
  If you want to include more files or folders you can easily do it by adding them to the backup file.
* Double click the file and the script will create a new folder on it's first run. There will the script store your backups.
### Usage / Linux
* Download the zip archive and place it in your SillyTavern main folder.
* Unzip the archive- you now have 4 files, Backup.bat, Backup.ps1, Backup_Linux.sh and Backup_Mac.sh in your SillyTavern main folder.
* Delete the Backup.bat, Backup.ps1 and Backup_Mac.sh.
* By default the following files and folders will get backed up:
  * \data\ folder (recursive)
  * \public\whitelist.txt
  * \config.yaml
  * \Backup_Linux.sh
  * \start.sh
  If you want to include more files or folders you can easily do it by adding them to the backup file.
* Open your Terminal and go to your SillyTavern folder.
* Use `chmod +x Backup_Linux.sh` to make the script executalble.
* Before you can start, you need to define the path to your backup folder in the script. Change `backup_path="/path/to/sillybackups"` and you're golden.
* Then run ./Backup_Linux.sh and run the script.
### Usage / MacOS
* Download the zip archive and place it in your SillyTavern main folder.
* Unzip the archive- you now have 4 files, Backup.bat, Backup.ps1, Backup_Linux.sh and Backup_Mac.sh in your SillyTavern main folder.
* Delete the Backup.bat, Backup.ps1 and Backup_Linux.sh.
* By default the following files and folders will get backed up:
  * \data\ folder (recursive)
  * \public\whitelist.txt
  * \config.yaml
  * \Backup_Mac.sh
  * \start.sh
  If you want to include more files or folders you can easily do it by adding them to the backup file.
* Open your Terminal and go to your SillyTavern folder.
* Use `chmod +x Backup_Mac.sh` to make the script executalble.
* Before you can start, you need to define the path to your backup folder in the script. Change `backup_path="/path/to/sillybackups"` and you're golden.
* Then run ./Backup_Linux.sh and run the script.
### Files In Windows Folder
![Screenshot 2025-05-03 003306](https://github.com/user-attachments/assets/59d9abdd-3ea6-47ff-b069-71b2b14be48d)
### Get PowerShell Scripts Working
![Screenshot 2025-05-03 003823](https://github.com/user-attachments/assets/d22e7a6f-a316-4439-9421-ed81bb4f74db)
### Terminal Output If Successful
![Screenshot 2025-05-03 003552](https://github.com/user-attachments/assets/c5de8398-2a1e-4220-b9a9-2723f6e608f1)
