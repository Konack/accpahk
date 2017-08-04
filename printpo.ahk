; Script for printing purchase orders

; If you wish to have a different icon for this script to distinguish it from
; other scripts in the tray, provide the filename below (leave blank to have
; no icon). For example: E:\stuff\Pics\icons\GeoIcons\Information.ico
I_Icon = C:\accpahk-master\assets\icons\po.ico

; Change tray icon (if one was specified in the configuration section above):
if I_Icon <>
    IfExist, %I_Icon%
        Menu, Tray, Icon, %I_Icon%

SetKeyDelay 45
Click 263, 39
Sleep, 50
Send, {P}
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
Sleep, 10000
Send, {Enter}
Click 263, 39
Send, {P}
Send, {Enter}
Send, {I}
Send, {Enter 7}
FormatTime, CurrentDateTime,, yyMMdd
SendInput %CurrentDateTime%
Send, 99
Send, {Enter}
Run, SnippingTool.exe
WinWait, Snipping Tool, , 3
WinActivate, Snipping Tool
MouseClick, left, 42, 42
Sleep, 500
MouseClick, left, 150, 150
Sleep, 500
Send, ^p
WinWait, Print, , 3
WinActivate, Print
MouseClick, left, 80, 120
Sleep, 500
Send, {Enter}
WinWait, Snipping Tool, , 3
WinActivate, Snipping Tool
Send, !{F4}
WinWait, ACCPAC Vision Point, , 3
WinActivate, ACCPAC Vision Point
Send, {Esc}
Send, {Esc}