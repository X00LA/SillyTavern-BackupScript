@echo off
setlocal enabledelayedexpansion

:: Set the PowerShell script variables
set "backupPath=%~dp0sillybackups"

::set "MyTime=%time:~0,2%-%time:~3,2%-%time:~6,2%"
set "MyTime=%time:~0,2%%time:~3,2%"

::set "MyDate=%date:~1,2%%date:~4,2%%date:~8,2%"
set "MyDate=%date:~6,4%%date:~3,2%%date:~0,2%"

:: Get the current date and time
::for /f "tokens=2 delims==" %%a in ('wmic os get localdatetime /value') do set "dt=%%a"

::set "CTRLTIME=%time:~0,2%:%time:~~3,2%:%time:~6,2%"
set "CTRLTIME=%time:~0,2%:%time:~~3,2%"

::set "CTRLDATE=%date:~1,2%%date:~4,2%%date:~8,2%"
set "CTRLDATE=%date:~6,4%%date:~3,2%%date:~0,2%"

:: Format the date and time
set "dt=%MyDate%_%MyTime%"

set "backupFileName=SillyTavern_Backup_%dt%"
set "backupFilePath7z=%backupPath%\%backupFileName%.7z"
set "backupFilePathZip=%backupPath%\%backupFileName%.zip"

:: Create backup directory if it doesn't exist
if not exist "%backupPath%" (
    mkdir "%backupPath%"
)

:: Define files to backup
set "filesToBackup=data\* public\whitelist.txt config.yaml Backup.bat Start.bat UpdateAndStart.bat UpdateForkAndStart.bat"

:: Check if 7z.exe is available
where /q 7z.exe > nul 2>&1
if %errorlevel% equ 0 (
    :: Use 7-Zip to create 7z archive
    7z a -t7z "%backupFilePath7z%" %filesToBackup%
) else (
    :: Use PowerShell to create zip archive
    powershell -Command "Compress-Archive -Path '%filesToBackup%' -DestinationPath '%backupFilePathZip%'"
)

endlocal