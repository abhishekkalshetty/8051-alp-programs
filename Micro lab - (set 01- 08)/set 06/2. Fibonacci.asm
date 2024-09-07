org 000h
mov r3,#08h
mov a,#000h
mov r1,#01h
mov r2,#00h
mov r0,#30h
repeat: add a,r1
mov @r0,a
inc r0
mov r1,02h
mov r2,a
djnz r3,repeat
end