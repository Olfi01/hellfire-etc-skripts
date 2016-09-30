@echo off & setlocal
set "N=d:\datei.txt"
set "T=%temp%\NamNum.txt"
findstr /n "^" "%N%">%T%
cls
echo.
type %temp%\NamNum.txt
echo.
set /p Nr= Link Nummer:
cls
for /f "tokens=1* delims=:" %%i in ('findstr /b "%Nr%:" %T%') do set "link_name=%%j"
del %T%

echo %link_name%