;Script for closing ACCPAC at 5:45. Task Scheduler triggers the scrip.
SetKeyDelay, 80
WinWait, ACCPAC Vision Point, , 3
WinActivate, ACCPAC Vision Point
Send, {Esc 5}
Send, !e
Send, {Enter}