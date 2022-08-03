Powershell.exe -windowstyle hidden {
    Add-Type -AssemblyName System.Windows.Forms
    $screen = [System.Windows.Forms.SystemInformation]::VirtualScreen
    $screen | Get-Member -MemberType Property
    while ($true) {
        [Windows.Forms.Cursor]::Position = "$($screen.Width/2),$($screen.Height/2)"
    }
}
