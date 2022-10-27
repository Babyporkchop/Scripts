PowerShell.exe -windowstyle hidden {
    Add-Type -AssemblyName System.Windows.Forms
    $screen = [System.Windows.Forms.SystemInformation]::VirtualScreen
    $screen | Get-Member -MemberType Property
    while ($true) {
                $x = Get-Random -Maximum $screen.width -Minimum 0
                $y = Get-Random -Maximum $screen.Height -Minimum 0
                [Windows.Forms.Cursor]::Position = "$($screen.Width-$x),$($screen.Height-$y)"
            }
}