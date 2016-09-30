dim Stoptime
Set omg = CreateObject("WScript.Shell")

omg = DateAdd("s", +10, Now)

do



loop until now >= omg
Set var2 = CreateObject("WScript.Shell")
var2.run C:\Users\Nick\AppData\Roaming\Microsoft\hellfire.cmd