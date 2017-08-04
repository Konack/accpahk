; Memos: Simple Script for making apple credit memos in accpac easier:

; If you wish to have a different icon for this script to distinguish it from
; other scripts in the tray, provide the filename below (leave blank to have
; no icon). For example: E:\stuff\Pics\icons\GeoIcons\Information.ico
I_Icon = %A_ScriptDir%\assets\icons\apple.ico

; Change tray icon (if one was specified in the configuration section above):
if I_Icon <>
    IfExist, %I_Icon%
        Menu, Tray, Icon, %I_Icon%

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