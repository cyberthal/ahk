; script for automated xfer from emacs journal to CT 
; v2.0 allows nested headers
; will break due to day countdown on trial - window title wrong. just search replace to fix.
; replace brackets before starting script 

SetKeyDelay, 100

!1::
WinWait, ErgoEmacs, 
IfWinNotActive, ErgoEmacs, , WinActivate, ErgoEmacs, 
WinWaitActive, ErgoEmacs, 

; isolate title

Send, {ALTDOWN}4f{ALTUP}{DEL}{ALTDOWN}4b{ALTUP}{BACKSPACE}{CTRLDOWN}k{CTRLUP}

; end isolate title

WinWait, New topic, 
IfWinNotActive, New topic, , WinActivate, New topic, 
WinWaitActive, New topic, 
Send, {CTRLDOWN}v{CTRLUP}{ENTER}
WinWait, ConnectedText - The Personal Wiki System, 
IfWinNotActive, ConnectedText - The Personal Wiki System, , WinActivate, ConnectedText - The Personal Wiki System, 
WinWaitActive, ConnectedText - The Personal Wiki System, 
Send, {ALTDOWN}{TAB}{ALTUP}
WinWait, ErgoEmacs, 
IfWinNotActive, ErgoEmacs, , WinActivate, ErgoEmacs, 
WinWaitActive, ErgoEmacs, 
Send, {CTRLDOWN}{SPACE}cf{CTRLUP}{CTRLDOWN}w{CTRLUP}{ALTDOWN}{TAB}{ALTUP}
WinWait, ConnectedText - The Personal Wiki System, 
IfWinNotActive, ConnectedText - The Personal Wiki System, , WinActivate, ConnectedText - The Personal Wiki System, 
WinWaitActive, ConnectedText - The Personal Wiki System, 
Send, {CTRLDOWN}v{CTRLUP}{ALTDOWN}t{ALTUP}
WinWait, New topic, 
IfWinNotActive, New topic, , WinActivate, New topic, 
WinWaitActive, New topic, 
Send, {ALTDOWN}{TAB}{ALTUP}
WinWait, ErgoEmacs, 
IfWinNotActive, ErgoEmacs, , WinActivate, ErgoEmacs, 
WinWaitActive, ErgoEmacs, 
Send, {CTRLDOWN}{SPACE}aw{CTRLUP}
return
