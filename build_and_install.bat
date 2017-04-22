@echo off
set cfg=conf
call %cfg%\intro.bat

echo Creating subdir for dlls...
mkdir hell >nul 2>&1

cd %cfg%
for /F "tokens=*" %%i in (.\Targets.txt) do (
  echo Now processing %%i...
  start /w magic.bat %%i %subdir% %gen%

  if exist "post\%%i.bat" (
    start /w post\%%i.bat %~dp0 %%i
  ) else (
    start /w post\default.bat %~dp0 %%i
  )
)

echo Copy QT shit...
start /w ultra.bat %~dp0

echo Done.
PAUSE
exit