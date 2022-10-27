powershell.exe -windowstyle hidden {
    $wshell = New-Object -ComObject wscript.shell;
    while($true){
        Start-Sleep -Milliseconds 10
        $wshell.SendKeys('~')
    }
}