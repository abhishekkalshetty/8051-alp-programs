org 00h
mov tmod,#00h
repeat: mov tl0,#0e5h
 mov th0,#0e5h
 cpl p1.5
 acall delay
 sjmp repeat
 delay: setb tr0
 wait: jnb tf0,wait
 clr tf0
 clr tr0
 ret
 end