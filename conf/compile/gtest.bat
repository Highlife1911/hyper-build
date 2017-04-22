@echo off
REM extra script to install gtest
REM %1	target configuration
REM %2	build directory
REM %3	target name

start /w %REF%\compile\_gtools.bat %1 %2 %3
exit