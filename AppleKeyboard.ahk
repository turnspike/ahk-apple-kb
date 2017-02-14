;; AppleKeyboard.ahk
;; Provide essential keys (eg pagedown) for small Apple Wireless Keyboards under Windows.

#SingleInstance, Force ; Allow only one running instance of script
#Persistent ; Keep script permanently running until terminated
#NoEnv ; Avoid checking empty variables to see if they are environment variables
#Warn ; Enable warnings to assist with detecting common errors
;#NoTrayIcon ; Disable the tray icon of the script
SendMode, Input ; Recommended for new scripts due to its superior speed and reliability
SetWorkingDir, %A_ScriptDir% ; Change the working directory of the script
SetBatchLines, -1 ; Run script at maximum speed

^!Left::Send {Home} ; control-alt-left is home

^!Right::Send {End} ; control-alt-right is end

^!Up::Send {PgUp} ; control-alt-up is page up

^!Down::Send {PgDn} ; control-alt-down is page down

ctrl & backspace::sendinput, {delete} ; control-backspace is delete

$^!backspace::send, {lcontrol}{lalt}{delete} ; control-alt-backspace is control-alt-delete

#Space::Send {#Up}{!Space} ; attempt to remap win+space to alt+space (not working)
