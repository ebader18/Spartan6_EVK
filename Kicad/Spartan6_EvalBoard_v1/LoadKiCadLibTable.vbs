dim sLegacyLibPath(3)
sLegacyLibPath(0) = "D:\Projects\Personal\Spartan6_EVK\Kicad\Spartan6_EvalBoard_v1"
sLegacyLibPath(1) = "D:\KiCad\share\modules"
sLegacyLibPath(2) = "D:\KiCad\share\modules\contrib"
sKiCadLibPath = "C:\SPB_Data\kicad_sources\library-repos"
sTablePath = "D:\Projects\Personal\Spartan6_EVK\Kicad\Spartan6_EvalBoard_v1\fp-lib-table"

Function AddLegacyLibrary(sFolderPath)
	Set objFSO = CreateObject("Scripting.FileSystemObject")
	Set objFolder = objFSO.GetFolder(sFolderPath)
	Set colFiles = objFolder.Files
	
	For Each objFile in colFiles
		If UCase(objFSO.GetExtensionName(objFile.name)) = "MOD" Then
			AddLegacyLibrary = AddLegacyLibrary & vbTab & "(lib (name " & objFile.Name & ")(type Legacy)(uri " & sFolderPath & "\" & objFile.Name & ")(options "")(descr ""))" & vbCrLf
		End If
	Next
End Function

Function AddKiCadLibrary(sFolderPath)
	Set objFSO = CreateObject("Scripting.FileSystemObject")
	Set objFolder = objFSO.GetFolder(sFolderPath)
	Set fc = objFolder.SubFolders
	
	For Each f1 in fc
		AddKiCadLibrary = AddKiCadLibrary & vbTab & "(lib (name " & f1.name & ")(type KiCad)(uri " & sFolderPath & "\" & f1.name & ")(options "")(descr ""))" & vbCrLf
	Next
End Function

Sub WriteTextToFile(sFilePath, s)
	Set objFSO=CreateObject("Scripting.FileSystemObject")
	Set objFile = objFSO.CreateTextFile(sFilePath, True)

	objFile.Write s
	
	objFile.Close
End Sub

sText = "(fp_lib_table" &  vbCrLf
sText = sText & AddLegacyLibrary(sLegacyLibPath(0)) & AddLegacyLibrary(sLegacyLibPath(1)) & AddLegacyLibrary(sLegacyLibPath(2)) & AddKiCadLibrary(sKiCadLibPath)
sText = sText & ")" & vbCrLf

WriteTextToFile sTablePath, sText