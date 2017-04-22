@echo off
set cfg=conf
SET /p subdir=<%cfg%\Build.txt

echo Clean command for CG
echo Build dir is '%subdir%'.

for /F "tokens=*" %%i in (.\%cfg%\Targets.txt) do (
  echo Deleting %%i...
  rmdir /s/q %%i\%subdir% >nul 2>&1
)
PAUSE