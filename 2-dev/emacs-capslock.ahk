; below applies only to Emacs windows
#IfWinActive ahk_class Emacs

; get rid of broken-ass winkey
LWin::AppsKey

; ctrl-capslock::escape
; ^CapsLock::Escape

^CapsLock::
Keywait, CapsLock
Send {Blind}{Escape}
Return
