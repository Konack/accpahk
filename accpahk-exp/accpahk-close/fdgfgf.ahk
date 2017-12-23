^l::
Loop Files, S:\vp112e\AR01\*.txt, R  ; Recurse into subfolders.
FileRead, Contents, %A_LoopFileFullPath%
if not ErrorLevel  ; Successfully loaded.
	Send %Contents%
else
	MsgBox, Failed
