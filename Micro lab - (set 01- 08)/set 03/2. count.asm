org 00h
mov r0,#30h
mov r1,#0ah
mov r2,#00h
loop : mov a,@r0
jb acc.7,neg
inc r2
sjmp next
neg :inc r3
next : inc r0
djnz r1,loop
end