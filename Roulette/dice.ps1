powershell.exe -windowstyle hidden {
$num = Get-Random -Maximum 101 -Minimum 1
start $num.bat
}