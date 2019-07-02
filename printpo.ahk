;Script for printing purchase orders
I_Icon = C:\accpahk-master\assets\icons\po.ico
; Change tray icon (if one was specified in the configuration section above):
if I_Icon <>
    IfExist, %I_Icon%
        Menu, Tray, Icon, %I_Icon%
SetKeyDelay 75
^o::
Clipboard :=
Run, C:\Users\accounting2\Documents\accpahk-exp\accpahk-receiving\ackloc.bat
WinWait, C:\WINDOWS\system32\cmd.exe
WinWaitClose, C:\WINDOWS\system32\cmd.exe
if(Clipboard != "Purchase Order Main Menu Connecting Point Computer Centers")
    {
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
    Send, {Up}{Down}
    Send, {Enter 2}
    WinWait, ACCPAC Vision Point, , 3
    WinActivate, ACCPAC Vision Point
    Send, y
    Sleep 350
    PixelSearch, Px, Py, 300, 320, 700, 500, 000080, 50, Fast
    if ErrorLevel
    {
        MsgBox, All new and updated purchase orders have been printed!
    }
    else
    {
        return
    }
}
Else
  MsgBox, Please navigate to Purchase Orders