SetKeyDelay 45
Click 252, 36
Sleep, 50
Send, e
Sleep, 50
Send, p
Sleep, 50
Send, d
Sleep, 50
Send, {Enter}
Sleep, 50
FormatTime, CurrentDateTime,, MMddyy
SendInput %CurrentDateTime%
Send, {Enter 7}s
WinWait, Print Setup
WinActivate, Print Setup
MouseClick, left, 242, 64
MouseClick, left, 242, 99
Send, {Enter}p
