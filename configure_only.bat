@echo off
set cfg=conf
call %cfg%\intro.bat

cd %cfg%
for /F "tokens=*" %%i in (.\Targets.txt) do (
  echo Now processing %%i...
  start /w conf.bat %%i %subdir% %gen%
)

echo Done.
PAUSE
exit