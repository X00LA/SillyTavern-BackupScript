#!/bin/bash

# Set the backup path
backup_path="/path/to/sillybackups"

# Get the current date and time
dt=$(date +"%Y%m%d_%H%M")

# Create backup directory if it doesn't exist
if [! -d "$backup_path" ]; then
    mkdir -p "$backup_path"
fi

# Define files to backup
files_to_backup=("data/*" "public/whitelist.txt" "config.yaml" "backup.sh" "start.sh")

# Check if 7z is available
if command -v 7zz &> /dev/null; then
    # Use 7-Zip to create 7z archive
    backup_file_name="SillyTavern_Backup_$dt.7z"
    backup_file_path="$backup_path/$backup_file_name"
    7zz a -t7z "$backup_file_path" "${files_to_backup[@]}"
elif command -v 7z &> /dev/null; then
    # Use 7-Zip to create 7z archive
    backup_file_name="SillyTavern_Backup_$dt.7z"
    backup_file_path="$backup_path/$backup_file_name"
    7z a -t7z "$backup_file_path" "${files_to_backup[@]}"
else
    # Use zip to create archive
    backup_file_name="SillyTavern_Backup_$dt.zip"
    backup_file_path="$backup_path/$backup_file_name"
    zip -r "$backup_file_path" "${files_to_backup[@]}"
fi