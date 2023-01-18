Powershell.exe -windowstyle hidden {
    For ($i=0; $i -le 100; $i++) {
        (new-object -com wscript.shell).SendKeys([char]175)
    }
}
