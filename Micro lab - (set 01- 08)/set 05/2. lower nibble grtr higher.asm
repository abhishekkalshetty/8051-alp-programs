org 00h 
mov r0,#30h 
mov a,@r0
anl a,#0fh
mov b,a
mov a,@r0
swap a
anl a,#0fh
clr c
subb a,b
jc yes
mov a,#0ffh
mov p0,a
sjmp last
yes: mov a,#00h
mov	p0,a
last: 
end