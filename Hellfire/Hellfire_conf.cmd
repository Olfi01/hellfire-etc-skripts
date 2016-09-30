@echo off
:st
cls
echo ---------------------------------------------------------------------
echo Hellfire Konfiguration
echo ----------------------
echo Bitte Auswaehlen:
echo 1. Zeit nach dem Start, bis das Programm starten soll
echo 2. Zeit nach der Meldung, bis der Computer heruntergefahren wird
echo 3. Nachricht bei der Meldung, dass der Computer heruntergefahren wird
echo 4. Datum fuer die April-Edition einstellen
echo 5. Programm beenden
echo ---------------------------------------------------------------------


set /p ch=
if %ch%==1 goto ZnS
if %ch%==2 goto ZnM
if %ch%==3 goto Na
if %ch%==4 goto DaAp
if %ch%==5 goto ex
else goto st
pause

:ex
exit

:ZnS
echo Bitte die Zeit in Sekunden eingeben, die nach dem Start des Computers vergehen soll, bis das Programm startet
set /p znst=
set /a znsta=%znst%*1000
del "conf\zeitinmillisekunden.cfg"
echo %znsta%>>conf/zeitinmillisekunden.cfg
echo %znst% Sekunden festgelegt!
pause
goto st

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

:DaAp
echo Legt das Datum fest, nach dem Hellfire fruehestens gestartet wird
echo Jahr eingeben (vierstellig)
set /p jahr=
del "conf\jahr.cfg"
echo %jahr%>>conf/jahr.cfg
echo Festgelegtes Jahr: %jahr%
echo Monat eingeben (zweistellig)
set /p monat=
del "conf\monat.cfg"
echo %monat%>>conf/monat.cfg
echo Festgelegter Monat: %monat%
echo Tag eingeben (zweistellig)
set /p tag=
del "conf\tag.cfg"
echo %tag%>>conf/tag.cfg
echo Festgelegter Tag: %tag%
pause
goto st