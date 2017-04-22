@echo on
REM %1 qt

echo Checking for Dependencies...

cmake --version >nul 2>&1

if %errorlevel% neq 0 goto :nocmake
echo CMake Found!

IF exist %1\lib\cmake\ ( echo QT Found! ) ELSE ( goto :noqt )
exit

:nocmake
color 0C
echo.
echo ERROR WHILE SEARCHING FOR CMAKE. ADD CMAKE BIN DIR TO PATH.
goto :fail

:noqt
color 0C
echo.
echo ERROR WHILE SEARCHING FOR QT. EDIT QT_VERSION.TXT.
goto :fail

:fail
REM idle
goto :fail