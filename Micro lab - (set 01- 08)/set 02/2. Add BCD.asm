org 00h
mov r0,#30h
mov r2,#0ah
mov r1,#00h
mov a,#00h
repeat :add a,@r0
da a
mov b,a
jnc next
mov a,r1
add a,#01h
da a
mov r1,a
next : mov a,b
inc r0
djnz r2,repeat
end