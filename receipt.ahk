;Script for printing receipts for purchase orders

; If you wish to have a different icon for this script to distinguish it from
; other scripts in the tray, provide the filename below (leave blank to have
; no icon). For example: E:\stuff\Pics\icons\GeoIcons\Information.ico
I_Icon = C:\accpahk-master\assets\icons\receipt.ico

; Change tray icon (if one was specified in the configuration section above):
if I_Icon <>
    IfExist, %I_Icon%
        Menu, Tray, Icon, %I_Icon%
^Esc::Reload ; Reload script with Escape key

SetKeyDelay 90

^r::
Send, !p
Send, o
Sleep 500
Send, {Enter}
Sleep 200
Send, !r
Send, e
Send, p
Send, d
Sleep 100
Send, {Enter}
Sleep 100
FormatTime, CurrentDateTime,, MMddyy
SendInput %CurrentDateTime%
Send, {Enter 7}s
WinWait, Print Setup, , 3
WinActivate, Print Setup
Send, {Up}{Down}
Send, {Enter 2}