@echo off
:st
cls
echo ---------------------------------------------------------------------
echo Langeweile-Notfall-Button Konfiguration
echo ---------------------------------------
echo Bitte Auswaehlen:
echo 1. Zeit nach der Meldung, bis der Computer heruntergefahren wird
echo 2. Nachricht bei der Meldung, dass der Computer heruntergefahren wird
echo 3. Programm beenden
echo ---------------------------------------------------------------------


set /p ch=
if %ch%==1 goto ZnM
if %ch%==2 goto Na
if %ch%==3 goto ex
else goto st
pause

:ex
exit

:ZnM
echo Bitte die Zeit in Sekunden eingeben, die nach der Meldung vergehen, bis der Computer herunter gefahren wird
set /p rz=
del "conf\reaktionszeit.cfg"
echo %rz%>>conf/reaktionszeit.cfg
echo %rz% Sekunden festgelegt!
pause
goto st

:Na
echo Nachricht eingeben, die mit der Meldung zum Herunterfahren angezeigt wird:
echo (max 130 Zeichen, keine Umlaute)
set /p nac=
del "conf\nachricht.cfg"
echo %nac%>>conf/nachricht.cfg
echo Festgelegte Nachricht: %nac%
pause
goto st