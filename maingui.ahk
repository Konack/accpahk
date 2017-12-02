;============ Variables ============;
SetWorkingDir %A_ScriptDir%

;============ Startup ============;
Run, R:\accpahk\VP112e ;Starts accpac
WinWait, ACCPAC VisionPoint
WinActivate, ACCPAC VisionPoint
Send, RC10 ;Login
Send, {Enter}
Send, {o} ;Selects prefered accpac program
Sleep, 2000

;============ GUI ============;
Gui 1: Font, s12
Gui 1: Add, Text, x22 y9 w170 h40 center, Select a button to start a task:
Gui 1: Font,
Gui 1: Add, Button, x22 y59 w80 h30 gButtonStart1, Update POs
Gui 1: Add, Button, x22 y99 w80 h30 gButtonStart2, &Apple Credit Memos
Gui 1: Add, Button, x22 y139 w80 h30 gButtonStart3, Place Holder
Gui 1: Add, Button, x22 y179 w80 h30 gButtonStart4, Place Holder
Gui 1: Add, Button, x112 y59 w80 h30 gButtonStart5, PO &Receipt
Gui 1: Add, Button, x112 y99 w80 h30 gButtonStart6, PO &List
Gui 1: Add, Button, x112 y139 w80 h30 gButtonStart7, Place Holder
Gui 1: Add, Button, x112 y179 w80 h30 gButtonStart8, Place Holder
Gui 1: Show, w220 h231, Accpahk
Send, {Alt}
return

GuiClose1:
ExitApp

;============ Actions ============;
ButtonStart1: ; Button for printing updated Purchase orders (New and cahnged ones ex. 17081102-A)
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
		MsgBox, All new purchase orders have been printed!
	}
	else
	{
		return
	}

ButtonStart2: ; Button for completing apple credit memos
	
	Gui2:
    Gui 2: +Resize
    Gui 2: Add, Text,, Apple:
    Gui 2: Add, Text,, Invoice:
    Gui 2: Add, Text,, Balance:
    Gui 2: Add, Edit, vApple limit8 number ym,  ; The ym option starts a new column of controls.
    Gui 2: Add, Edit, vInvoice limit6 number,
    Gui 2: Add, Edit, vBalance
    Gui 2: Add, Button, default, OK  ; The label ButtonOK will be run when the button is pressed.
    Gui 2: Show,, ACM
	return  ; End of auto-execute section. The script is idle until the user does something.

	GuiClose2:
	ExitApp
    
	ButtonOK:
    Gui 2: Submit  ; Save the input from the user to each control's associated variable.
    WinWait, ACCPAC Vision Point, , 3
    WinActivate, ACCPAC Vision Point
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
    Gui 2: Destroy

ButtonStart3: ; Button for ...
	return

ButtonStart4: ; Button for ...
	return

ButtonStart5: ; Button for printing purchase order receipt
	SetKeyDelay 75
    WinWait, ACCPAC Vision Point, , 3
    WinActivate, ACCPAC Vision Point
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
	Send, {Up}{Down}
	Send, {Enter 2}
	return

ButtonStart6: ; Button for printing current PO list
	;Listing new POs
	SetKeyDelay 100
	WinWait, ACCPAC Vision Point, , 3
	WinActivate, ACCPAC Vision Point
	Send, !r
	Send, p
	Send {Enter}
	Send, i
	Send, {Enter 6}
	;Select Lazer printer next to receiving
	Send, s
	WinWait, Print Setup, , 3
	WinActivate, Print Setup
	Send, {Up}{Down}
	Send, {Enter 2}
	WinWait, ACCPAC Vision Point, , 3
	WinActivate, ACCPAC Vision Point
	FormatTime, CurrentDateTime,, yyMMdd
	SendInput %CurrentDateTime%
	Send, 99
	Send, {Enter}
	Sleep, 150
	;Using Snipping tool to create a screenshot of window
	Run, SnippingTool.exe
	WinWait, Snipping Tool, , 3
	WinActivate, Snipping Tool
	Send, !n
	Sleep, 250
	Send, {Enter 2}
	Send, ^p
	Send, {Enter}
	;Cleanup
	Send !{F4}
	WinWait, ACCPAC Vision Point, , 3
	WinActivate, ACCPAC Vision Point
	Send, {Esc 2}
	return

ButtonStart7: ; Button for ...
	return

ButtonStart8: ; Button for ...
	return
	
;============ Exit ============;