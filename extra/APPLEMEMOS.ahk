; Memos: Simple Script for making apple credit memos in accpac easier:
^y::
vGui:
Gui, Add, Text,, Apple:
Gui, Add, Text,, Invoice:
Gui, Add, Text,, Balance:
Gui, Add, Edit, vApple limit8,  ; The ym option starts a new column of controls.
Gui, Add, Edit, vInvoice limit6,
Gui, Add, Edit, vBalance
Gui, Add, Button, default, OK  ; The label ButtonOK (if it exists) will be run when the button is pressed.
Gui, Show, w400,, Apple Credit Memos
return  ; End of auto-execute section. The script is idle until the user does something.

GuiClose:
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