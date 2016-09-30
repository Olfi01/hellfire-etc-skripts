Dim StrComputer : StrComputer = "." '--Nicksrechner
GetObject("winmgmts:{impersonationLevel=impersonate}!\\" & StrComputer & "\root\cimv2")


Function CheckProcess(name)
Dim ObjProcess
Set ObjProcess = OBJWMI.ExecQuery("select * from win32_process where name ='" & "notepad.exe" & "' ")
If ObjProcess.Count <> 0 Then
	CheckProcess = True
Else 
	CheckProcess = False
End If
Set ObjProcess = Nothing
End Function

Do
	BoolCkproc = CheckProcess("notepad.exe")
	WScript.Sleep
	
Loop until BoolCkProc = False


MsgBox "omg"