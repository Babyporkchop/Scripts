Powershell.exe -windowstyle hidden {
    cd C:\
    mkdir RickRoll
    attrib +H RickRoll
    cd RickRoll
    Invoke-WebRequest -Uri https://raw.githubusercontent.com/Babyporkchop/Scripts/main/BadUSBScripts/RickRoll/RickRoll.mp4 -OutFile .\RickRoll.mp4

}