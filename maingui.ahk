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
	SetKeyDelay 75
	WinWait, ACCPAC Vision Point, , 3
	WinActivate, ACCPAC Vision Point
	Sleep 150
	Send, !r
	Send, p
	Send, {Enter 7}
	Send, 17052799
	Send, {Enter 4}
	Send, s
	WinWait, Print Setup, , 3
	WinActivate, Print Setup
	MouseClick, left, 242, 64
	MouseClick, left, 242, 99
	Send, {Enter}
	Send, {P}
	WinWait, ACCPAC Vision Point, , 3
	WinActivate, ACCPAC Vision Point
	Send, y
	Sleep 350
	PixelSearch, Px, Py, 300, 320, 700, 500, 000080, 50, Fast
	if ErrorLevel
	{
	    Send, {Enter}
	    MsgBox, No new purcahse orders to print.
	}
	else
	{
	    MsgBox, All new purchase orders have been printed!
	}
		return
ButtonStart2: ; Button for completing apple credit memos
	vGui:
		Gui, +Resize
		Gui, Add, Text,, Apple:
		Gui, Add, Text,, Invoice:
		Gui, Add, Text,, Balance:
		Gui, Add, Edit, vApple limit8 ym,  ; The ym option starts a new column of controls.
		Gui, Add, Edit, vInvoice limit6,
		Gui, Add, Edit, vBalance
		Gui, Add, Button, default, OK  ; The label ButtonOK (if it exists) will be run when the button is pressed.
		Gui, Show,, ACM
	return  ; End of auto-execute section. The script is idle until the user does something.
	GuiCloseApple:
	ExitApp
	ButtonOK:
		Gui, Submit  ; Save the input from the user to each control's associated variable.
		WinActivate, ACCPAC Vision Point                                                  User ID: RC10
		WinWait, ACCPAC Vision Point                                                  User ID: RC10
		SetKeyDelay 100
		Click, 165, 40
		Send, r
		Send, Apple.
		Send, {Enter}
		Send, %Apple%
		Send, {Enter}
		Send, %Balance%
		Send, s
		Send, a
		Send, CRD
		Send, %Invoice%
		Send, {Enter 5}
		return
ButtonStart3: ; Button for ...
	return
ButtonStart4: ; Button for ...
	return
ButtonStart5: ; Button for printing purchase order receipt
	SetKeyDelay 75
	Send, !r
	Send, e
	Send, p
	Send, d
	Send, {Enter}
	FormatTime, CurrentDateTime,, MMddyy
	SendInput %CurrentDateTime%
	Send, {Enter 7}s
	WinWait, Print Setup, , 3
	WinActivate, Print Setup
	MouseClick, left, 242, 64
	MouseClick, left, 242, 99
	Send, {Enter}p
	return
ButtonStart6: ; Button for ...
	return
ButtonStart7: ; Button for ...
	return
ButtonStart8: ; Button for ...
	return