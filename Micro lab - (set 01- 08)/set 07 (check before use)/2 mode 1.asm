 org 00h
 mov tmod,#01h
 rpt: mov tl0,#0feh
 mov tho,#0b7h
 setb p1.5
 acall delay
 mov tl0,#0feh
 mov th0,#6fh
 cpl p1.5
 acall delay
 sjmp rpt
 delay:setb tr0
 wait:jnb tf0,wait
 clr tf0
 clr tr0
 ret 
 end