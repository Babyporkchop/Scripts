Powershell.exe -windowstyle hidden {
    for ($i=1; $i -le 25; $i++) {
        (new-object -com wscript.shell).SendKeys([char]175)
    }
}