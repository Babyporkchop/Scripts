Powershell.exe -windowstyle hidden {
    while($true){
        (new-object -com wscript.shell).SendKeys([char]175)
        Start-Sleep -Milliseconds 100
    }
}
