; This script enables Brainstorm-like functionality in Zabkat Xplorer2
; Here is Brainstorm's home page: http://www.brainstormsw.com/about.html

; Prevents key entry from outpacing Xplorer2 responsiveness. 
SetKeyDelay, 200

; Makes renaming numerical prefixes convenient
+F2::
Send ^{F2}{Home}+{right}
return

; Throws highlighted items to the appropriate numerical target

!1::
Send ^x{tab}1{enter}^v
Sleep 500
Send {bs}{tab}
return

!2::
Send ^x{tab}2{enter}^v
Sleep 500
Send {bs}{tab}
return

!3::
Send ^x{tab}3{enter}^v
Sleep 500
Send {bs}{tab}
return

!4::
Send ^x{tab}4{enter}^v
Sleep 500
Send {bs}{tab}
return

!5::
Send ^x{tab}5{enter}^v
Sleep 500
Send {bs}{tab}
return

!6::
Send ^x{tab}6{enter}^v
Sleep 500
Send {bs}{tab}
return

!7::
Send ^x{tab}7{enter}^v
Sleep 500
Send {bs}{tab}
return

!8::
Send ^x{tab}8{enter}^v
Sleep 500
Send {bs}{tab}
return

!9::
Send ^x{tab}9{enter}^v
Sleep 500
Send {bs}{tab}
return

!0::
Send ^x{tab}0{enter}^v
Sleep 500
Send {bs}{tab}
return