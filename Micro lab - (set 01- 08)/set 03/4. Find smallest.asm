org 00h 
mov r0,#30h
mov r1,#0ah
mov a,#00h
mov p1,#0ffh
jb p1.0,smallest
clr c
repeat1 : subb a,@r0
jnc noexch
mov a,@r0
noexch : inc r0
clr c
djnz r1,repeat1
mov 40h,a
sjmp last
smallest : mov r0,#30h
mov a,@r0
dec r1
repeat2 : inc r0
mov b,@r0
cjne a,b,next
next : jc noexch2
mov a,@r0
noexch2 : clr c
djnz r1,repeat2
mov 40h,a
last : mov b,#00h
end