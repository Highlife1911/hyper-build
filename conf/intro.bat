set gen="Visual Studio 12 2013 Win64"
set msb=%ProgramFiles(x86)%\MSBuild\12.0\Bin\amd64
SET /p subdir=<%cfg%\Build.txt

echo Autobuild for CG
echo Configuration dir is "%cfg%".
echo Generator is %gen%.
echo VS Build cmd is "%msb%".

REM set path for this batch script.
SET PATH=%PATH%;%msb%
SET /p QTVERSION=<%cfg%\QT_Version.txt

echo Checking for Dependencies...
start /w %cfg%\deps.bat %QTVERSION%

SET CMAKE_PREFIX_PATH=%CMAKE_PREFIX_PATH%;%QTVERSION%\lib\cmake;%ProgramFiles%
SET GLM_HOME=%ProgramFiles%\glm\include
SET ASSIMP_HOME=%ProgramFiles%\Assimp
REM SET GTESTDIR=%ProgramFiles%\gtest
REM SET GMOCKDIR=%ProgramFiles%\gmock