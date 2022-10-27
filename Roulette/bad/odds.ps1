$num = Get-Random -Maximum 10 -Minimum 1
start .\$num.bat
Write-Host($num)
