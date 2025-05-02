# Set the script variables
$backupPath = Split-Path -Path $PSCommandPath -Parent
$backupPath = Join-Path -Path $backupPath -ChildPath "sillybackups"

# Get the current date and time
$dt = Get-Date -Format "yyyyMMdd_HHmm"

# Set the backup file name and path
$backupFileName = "SillyTavern_Backup_$dt"
$backupFilePath7z = Join-Path -Path $backupPath -ChildPath ($backupFileName + ".7z")
$backupFilePathZip = Join-Path -Path $backupPath -ChildPath ($backupFileName + ".zip")

# Create backup directory if it doesn't exist
if (!(Test-Path -Path $backupPath)) {
    New-Item -Path $backupPath -ItemType Directory
}

# Define files to backup
$filesToBackup = @(
    Join-Path -Path $backupPath -ChildPath "..\data\*"
    Join-Path -Path $backupPath -ChildPath "..\public\whitelist.txt"
    Join-Path -Path $backupPath -ChildPath "..\config.yaml"
    Join-Path -Path $backupPath -ChildPath "..\Backup.ps1"
    Join-Path -Path $backupPath -ChildPath "..\Start.bat"
    Join-Path -Path $backupPath -ChildPath "..\UpdateAndStart.bat"
    Join-Path -Path $backupPath -ChildPath "..\UpdateForkAndStart.bat"
)

# Check if 7z.exe is available
if (Get-Command -Name "7z" -ErrorAction SilentlyContinue) {
    # Use 7-Zip to create 7z archive
    7z a -t7z $backupFilePath7z $filesToBackup
} else {
    # Use Compress-Archive to create zip archive
    Compress-Archive -Path $filesToBackup -DestinationPath $backupFilePathZip
}