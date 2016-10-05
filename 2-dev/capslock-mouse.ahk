; alt-capslock::cycle mouse button 1 state up/down

keystate=down

!CapsLock::
Send {LButton %keystate%}
if keystate = down
SetEnv, keystate, up
else if keystate = up
SetEnv, keystate, down
return