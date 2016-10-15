; * main windows ahk script

#InstallKeybdHook

; This file is my primary Windows Autohotkey script.  It runs at startup and fixes keybinds to my preference.  So far it has only been tested on RoG laptop.

;; {Browser_Forward}{Browser_Stop}{Browser_Refresh}{Browser_Search}

; ** jump dexpot desktops by media keys

Browser_Back::
Send ^!+1
return

Browser_Forward::
Send ^!+2
return

Browser_Stop::
Send ^!+3
return

Browser_Refresh::
Send ^!+4
return

*Browser_Search::
WinActivate, Manjaro 15.09 (64bit).vdi [Running] - Oracle VM VirtualBox
return

; ** the busy capslock

; ** toggle manjaro H-q

~AppsKey & q::
WinActivate, Manjaro 15.09 (64bit).vdi [Running] - Oracle VM VirtualBox
return 

; **  toggle spacemacs with capslock + 4, since it won't C-z anymore

CapsLock & 4::
IfWinActive, emacs@rog
    SendInput !{ESC}
else
WinActivate, emacs@rog
return 

; ** rejected 

; get rid of broken winkey
; LWin::AppsKey
; bad idea.  Windows won't let this one go gracefully.  For maximum cross compatibility, pay the Winkey tax. 

; ctrl-capslock::escape
; ^CapsLock::Escape <- this didn't work.


; *** alt-capslock::cycle mouse button 1 state up/down
; Benefit: easier than clicking on a laptop trackpad.  Removes need to leave home keys. 

; keystate=down
; 
; !CapsLock::
; Send {LButton %keystate%}
; if keystate = down
; SetEnv, keystate, up
; else if keystate = up
; SetEnv, keystate, down
; return


; *** converts capslock to ctrl-alt-shift

; mostly for desktop switching in dexpot
; makes a difficult keychord feasible, expanding available keyboard options

; CapsLock::
; Send {Blind}{Ctrl Down}{Shift Down}{Alt Down}
; Keywait, {CapsLock Up}
; Send {Ctrl Up}{Shift Up}{Alt Up}
; Return

; *** toggle capslock via shift + capslock

; ^CapsLock::
; Keywait, CapsLock
; Send {Blind}{Escape}
; Return
