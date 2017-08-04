#Persistent
SetTitleMatchMode, 1 ; match start of the title
Run, ACCPAC, 1

ACCPAC:
Run, C:\Users\accounting2\Desktop\VP112e ; OK
WinWait, ACCPAC VisionPoint
WinActivate, ACCPAC VisionPoint
Send, RC10
Send, {Enter}
Send, {o}
Run, printpo.ahk
Run, receipt.ahk

NoACCPAC:
SetWorkingDir %A_ScriptDir%
Sleep, 3000
IfWinNotExist, ACCPAC Vision Point
{
    Run, close2.ahk
    Run, close1.ahk
    return
}
else
    Goto, NoACCPAC