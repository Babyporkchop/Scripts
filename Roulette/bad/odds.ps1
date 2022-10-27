$num = Get-Random -Maximum 11 -Minimum 1
if ($num -eq 10){
Get-ChildItem -Path .\* -Include *.bat | ForEach-Object {Start-Process -FilePath cmd.exe -ArgumentList "`"$($_.FullName)`""}
exit
}
start .\$num.bat
Write-Host($num)