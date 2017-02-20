;; AppleKeyboard.ahk
;; Provide essential keys (eg pagedown) for small Apple Wireless Keyboards under Windows.

#SingleInstance, Force ; Allow only one running instance of script
#Persistent ; Keep script permanently running until terminated
#NoEnv ; Avoid checking empty variables to see if they are environment variables
#Warn ; Enable warnings to assist with detecting common errors
#InstallKeybdHook ; Use keyboard hook for extra kb functions
SendMode, Input ; Recommended for new scripts due to its superior speed and reliability
SetBatchLines, -1 ; Run script at maximum speed

;;-- scrolling

^!Left::Send {Home} ; control-alt-left is home
<#Left::Send {Home} ; lwin-left is home
^!Right::Send {End} ; control-alt-right is end
<#Right::Send {End} ; lwin-right is end
^!Up::Send {PgUp} ; control-alt-up is page up
<#Up::Send {PgUp} ; control-alt-up is page up
^!Down::Send {PgDn} ; control-alt-down is page down
<#Down::Send {PgDn} ; control-alt-down is page down

ctrl & backspace::sendinput, {delete} ; control-backspace is delete

;;-- commonly used apple key combos

#c::Send ^c ; win-c is copy
#x::Send ^x ; win-x is cut
#v::Send ^v ; win-v is paste
#z::Send ^z ; win-z is undo
#y::Send ^y ; win-y is redo
#s::Send ^s ; win-s is save
#n::Send ^n ; win-n is new
#o::Send ^o ; win-o is open
#a::Send ^a ; win-a is select all
#f::Send ^f ; win-f is find
#h::Send ^h ; win-h is replace
#w::Send ^w ; win-w is close tab
#t::Send ^t ; win-t is new tab
#q::Send !{f4} ; win-q is quit
;;#=::Send ^= ; win-= is zoom in
;;#+::Send ^+ ; win-+ is zoom in
;;#-::Send ^- ; win-- is zoom out
LWin & Tab::AltTab

;;-- system functions

$^!backspace::Send {lcontrol}{lalt}{delete} ; control-alt-backspace is control-alt-delete
+#3::Send {PrintScreen} ; shift-win-3 is printscreen
;; #Space::Send {!Space} ; remap win+space to alt+space

;;-- Media Keys

^F7::SendInput {Media_Prev}
^F8::SendInput {Media_Play_Pause}
^F9::SendInput {Media_Next}
^F10::SendInput {Volume_Mute}
^F11::SendInput {Volume_Down}
^F12::SendInput {Volume_Up}

;;-- Chrome

#IfWinActive ahk_exe chrome.exe
+#Left:: Send +^{Tab}
+#Right:: Send ^{Tab}
#R:: Send ^r
#IfWinActive

;;-- Cygin
;;TODO map win-c to shift-ctrl-c etc
