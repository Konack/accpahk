Run, C:\Users\accounting2\Desktop\VP112e ; OK
WinWait, ACCPAC VisionPoint
WinActivate, ACCPAC VisionPoint
Send, RC10
Send, {Enter}
Send, {o}
Run, C:\Users\accounting2\Documents\ahk\printpo.ahk
Run, C:\Users\accounting2\Documents\ahk\receipt.ahk
NoACCPAC:
Sleep, 3000
IfWinNotExist, ACCPAC Vision Point
{
    Run, C:\Users\accounting2\Documents\ahk\close2.ahk
    Run, C:\Users\accounting2\Documents\ahk\close1.ahk
    return
}
else
    Goto, NoACCPAC