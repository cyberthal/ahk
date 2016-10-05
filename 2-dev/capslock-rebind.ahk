 #InstallKeybdHook

; capslock to ctrl-alt-shift 
; tested and works by itself in ultramon

CapsLock::
Send {Blind}{Ctrl Down}{Shift Down}{Alt Down}
Keywait, CapsLock
Send {Ctrl Up}{Shift Up}{Alt Up}
Return