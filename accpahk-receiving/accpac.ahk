;Main script for opening ACCPAC

; If you wish to have a different icon for this script to distinguish it from
; other scripts in the tray, provide the filename below (leave blank to have
; no icon). For example: E:\stuff\Pics\icons\GeoIcons\Information.ico
I_Icon = C:\accpahk-master\assets\icons\vfp6.ico

; Change tray icon (if one was specified in the configuration section above):
if I_Icon <>
    IfExist, %I_Icon%
        Menu, Tray, Icon, %I_Icon%

Run, C:\Users\accounting2\Desktop\VP112e ; OK
WinWait, ACCPAC VisionPoint
WinActivate, ACCPAC VisionPoint
Send, RC10
Send, {Enter}
Send, {o}
Run, C:\accpahk-master\printpo.ahk
Run, C:\accpahk-master\receipt.ahk
NoACCPAC:
Sleep, 3000
IfWinNotExist, ACCPAC Vision Point
{
    Run, C:\accpahk-master\close2.ahk
    Run, C:\accpahk-master\close1.ahk
    return
}
else
    Goto, NoACCPAC