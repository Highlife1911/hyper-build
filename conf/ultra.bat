@echo off
REM %1	basedir

set QDIR=%QTVERSION%\bin

copy "%QDIR%\Qt5Widgets.dll" "%1\hell\"
copy "%QDIR%\Qt5Widgetsd.dll" "%1\hell\"
copy "%QDIR%\icudt53.dll" "%1\hell\"
copy "%QDIR%\icuin53.dll" "%1\hell\"
copy "%QDIR%\icuuc53.dll" "%1\hell\"

exit