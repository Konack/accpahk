;Script for printing receipts for purchase orders

; If you wish to have a different icon for this script to distinguish it from
; other scripts in the tray, provide the filename below (leave blank to have
; no icon). For example: E:\stuff\Pics\icons\GeoIcons\Information.ico
I_Icon = C:\accpahk-master\assets\icons\receipt.ico

; Change tray icon (if one was specified in the configuration section above):
if I_Icon <>
    IfExist, %I_Icon%
        Menu, Tray, Icon, %I_Icon%

^r::
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
