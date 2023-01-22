Powershell.exe -windowstyle hidden {
$PlayWav=New-Object System.Media.SoundPlayer

$PlayWav.SoundLocation='.\RickRoll.wav'

$PlayWav.playsync()
}