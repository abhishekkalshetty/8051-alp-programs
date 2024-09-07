org 00h
mov r0,#30h
mov r1,#0ah
mov 40h,#03h
repeat : mov a,@r0
cjne a,40h,no
mov p0,#00h
sjmp last
no : inc r0
djnz r1,repeat
mov p1,#0ffh
last : nop
end