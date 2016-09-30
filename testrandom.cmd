@echo off
set /a gruf=3*%random%/32767+1
echo %gruf%
pause
if gruf==1 goto ceta
if gruf==2 goto ttip

:ceta
start "" "C:\Users\%username%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\hellfire.wsf"
pause
:ttip
start /w "firefox.exe" "http://youtube.de"
pause