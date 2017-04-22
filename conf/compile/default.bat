@echo off
REM extra script to install gtest
REM %1	target configuration
REM %2	build directory
REM %3	target name

echo Now Compiling '%3.sln' on '%1'. 
echo.
msbuild %BDIR%\%3.sln /p:configuration=%1 /target:ALL_BUILD /m /clp:ErrorsOnly
echo.

if %errorlevel% neq 0 (
  set fpro=%1
  goto :blderr
)

echo Installing
echo.
msbuild %BDIR%\INSTALL.vcxproj /p:configuration=%1 /clp:ErrorsOnly
exit

:blderr
echo.
echo.
echo VISUAL STUDIO CANT BUILD '%fpro%'.
PAUSE