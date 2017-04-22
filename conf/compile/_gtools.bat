@echo off
REM extra script to install gtools
REM %1	target configuration
REM %2	build directory
REM %3	target name

mkdir "%ProgramFiles%\%3\%1" >nul 2>&1

echo Now Compiling '%3.sln' on '%1'. 
echo.
msbuild %BDIR%\ALL_BUILD.vcxproj /p:configuration=%1 /m /clp:ErrorsOnly

for /R "%3\%2\%1" %%f in (*.lib) do copy "%%f" "%ProgramFiles%\%3\%1\"
for /R "%3\%2\%1" %%f in (*.dll) do copy "%%f" "%ProgramFiles%\%3\%1\"
exit