@echo off
cd /d %~dp0
del /f /s /q %~dp0..\Temp\Foundfile.txt >nul 2>nul
if /i [%1]==[] goto usage
if /i [%2]==[] goto usage

cd /d %1
dir /b /s %2>%~dp0..\Temp\Foundfile.txt

goto end

:usage
echo Usage: FileFinder.bat Folder FileName

:end
