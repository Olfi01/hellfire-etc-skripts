set /p time=<conf\reaktionszeit.cfg
set /p nachr=<conf\nachricht.cfg
del "%userprofile%\AppData\LangeweileNotfallButton.bat"
echo shutdown /s /t %time% /c "%nachr%">>"%userprofile%\AppData\LangeweileNotfallButton.bat"
copy "GFS Mathe Pytagoras Klasse 9.lnk" "%userprofile%\Desktop"