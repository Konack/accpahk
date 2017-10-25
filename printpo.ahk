;Script for printing purchase orders

; If you wish to have a different icon for this script to distinguish it from
; other scripts in the tray, provide the filename below (leave blank to have
; no icon). For example: E:\stuff\Pics\icons\GeoIcons\Information.ico
I_Icon = C:\accpahk-master\assets\icons\po.ico

; Change tray icon (if one was specified in the configuration section above):
if I_Icon <>
    IfExist, %I_Icon%
        Menu, Tray, Icon, %I_Icon%
^o::
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
