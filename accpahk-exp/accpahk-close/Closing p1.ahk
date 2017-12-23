^m::
;============ Variables ============;
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
SetKeyDelay 150

;============ Part 1 ============;
Send !P
Send R
Sleep 2000
Send !R
Send A
Send R
Send P
Send D
Send {Enter 4}
Send R
Send {Enter 5}
Send S ;Fix later to select correct printer

Send !P
Send A
Sleep 2000
Send !F
Send B
Send M
Send {Enter 2}