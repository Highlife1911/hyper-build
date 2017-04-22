@echo off
REM %1	target
REM %2	subdir
REM %3	generator
REM %4	conf dir

SET BDIR=%1\%2

cd ..
echo Now building '%1'.

echo Creating build directory '%2'
mkdir %BDIR% >nul 2>&1

echo Running cmake with Generator '%3'

if exist "%cfg%\cmake\%1.bat" (
  start /w %cfg%\cmake\%1.bat %3 %1
) else (
  start /w %cfg%\cmake\default.bat %3 %1
)

echo Done!
exit