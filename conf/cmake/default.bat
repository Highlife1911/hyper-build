@echo off
REM %1 generator

cd %BDIR%
cmake -G%1 ../ || goto :nocmake
exit

:nocmake
color 0C
echo.
echo.
echo ERROR WITH CMAKE. CMAKE PROBABLY NOT IN PATH.
echo THE PROJECT MIGHT HAVE INVALID FILES NOW.
PAUSE