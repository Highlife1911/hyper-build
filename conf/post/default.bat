REM %1	base dir
REM %2	project

echo Copying...
for /R "%ProgramFiles%\%2" %%f in (*.dll) do copy "%%f" "%1\hell\"
exit