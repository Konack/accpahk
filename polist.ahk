^n::
SetKeyDelay 100
WinWait, ACCPAC Vision Point, , 3
WinActivate, ACCPAC Vision Point
Send, !r
Send, p
Send {Enter}
Send, i
Send, {Enter 6}
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
Run, SnippingTool.exe
WinWait, Snipping Tool, , 3
WinActivate, Snipping Tool
Send, !n
Sleep, 250
Send, {Enter 2}
Send, ^p
Send, {Enter}
Send !{F4}
WinWait, ACCPAC Vision Point, , 3
WinActivate, ACCPAC Vision Point
Send, {Esc 2}
return