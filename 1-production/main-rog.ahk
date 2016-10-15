#InstallKeybdHook

; This file is my primary Windows Autohotkey script.  It runs at startup and fixes keybinds to my preference.  So far it has only been tested on RoG laptop.

; * converts capslock to ctrl-alt-shift
; mostly for desktop switching in ultramon
; makes a difficult keychord feasible, expanding available keyboard options

CapsLock::
Send {Blind}{Ctrl Down}{Shift Down}{Alt Down}
Keywait, CapsLock
Send {Ctrl Up}{Shift Up}{Alt Up}
Return


; * alt-capslock::cycle mouse button 1 state up/down
; Benefit: easier than clicking on a laptop trackpad.  Removes need to leave home keys. 

keystate=down

!CapsLock::
Send {LButton %keystate%}
if keystate = down
SetEnv, keystate, up
else if keystate = up
SetEnv, keystate, down
return

; * switch to manjaro

CapsLock & 5::
WinActivate, Manjaro 15.09 (64bit).vdi [Running] - Oracle VM VirtualBox
return 

; * Everything below applies only to Emacs windows

#IfWinActive ahk_class Emacs

; toggle capslock via shift + capslock
^CapsLock::
Keywait, CapsLock
Send {Blind}{Escape}
Return

; ** rejected 

; get rid of broken winkey
; LWin::AppsKey
; bad idea.  Windows won't let this one go gracefully.  For maximum cross compatibility, pay the Winkey tax. 

; ctrl-capslock::escape
; ^CapsLock::Escape <- this didn't work. 