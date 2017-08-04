SetWorkingDir %A_ScriptDir%
Gui, Font, s12
Gui, Add, Text, x22 y9 w170 h40 center, Select a button to start a task:
Gui, Font,
Gui, Add, Button, x22 y59 w80 h30 gButtonStart1, Purchase &Orders
Gui, Add, Button, x22 y99 w80 h30 gButtonStart2, &Apple Credit Memos
Gui, Add, Button, x22 y139 w80 h30 gButtonStart3, Place Holder
Gui, Add, Button, x22 y179 w80 h30 gButtonStart4, Place Holder
Gui, Add, Button, x112 y59 w80 h30 gButtonStart5, PO &Receipt
Gui, Add, Button, x112 y99 w80 h30 gButtonStart6, Place Holder
Gui, Add, Button, x112 y139 w80 h30 gButtonStart7, Place Holder
Gui, Add, Button, x112 y179 w80 h30 gButtonStart8, Place Holder
Gui, Show, w220 h231, Accpahk
Send, {Alt}
return

GuiClose:
ExitApp

ButtonStart1: ; Button for printing Purchase orders
	Run, printpo.ahk
	return
ButtonStart2: ; Button for completing apple credit memos
	Run, applem.ahk
	return
ButtonStart3: ; Button for ...
	return
ButtonStart4: ; Button for ...
	return
ButtonStart5: ; Button for printing purchase order receipt
	Run, receipt.exe
	return
ButtonStart6: ; Button for ...
	return
ButtonStart7: ; Button for ...
	return
ButtonStart8: ; Button for ...
	return
