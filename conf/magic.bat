@echo off
REM %1	target
REM %2	subdir
REM %3	generator

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

echo Now building targets:
for /F "tokens=*" %%i in (%cfg%\Conf.txt) do (

  echo %%i...
  if exist "%cfg%\compile\%1.bat" (
    start /w %cfg%\compile\%1.bat %%i %2 %1
  ) else (
    start /w %cfg%\compile\default.bat %%i %2 %1
  )
	
)
echo Done!
exit