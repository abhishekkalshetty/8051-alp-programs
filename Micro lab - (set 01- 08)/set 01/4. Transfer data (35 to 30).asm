org 00h
mov r0,#35h
mov r1,#30h
mov r2,#0ah
repeat : mov a, @r0
mov @r1,a
inc r0
inc r1
djnz r2,repeat
end