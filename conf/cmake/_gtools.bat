@echo off
REM %1	toolname
REM %2	generator

cd %BDIR%
cmake -G%2 -D CMAKE_DEBUG_POSTFIX:STRING=d -D BUILD_SHARED_LIBS:BOOL=ON -D gtest_disable_pthreads:BOOL=ON %1 || goto :nocmake
CMAKE_DEBUG_POSTFIX

mkdir "%ProgramFiles%\%1" >nul 2>&1
mkdir "%ProgramFiles%\%1\include" >nul 2>&1

xcopy "..\..\%1\include" "%ProgramFiles%\%1\include\" /s /e /y >nul 2>&1
exit

:nocmake
color 0C
echo.
echo.
echo ERROR WITH CMAKE. CMAKE PROBABLY NOT IN PATH.
echo THE PROJECT MIGHT HAVE INVALID FILES NOW.
PAUSE