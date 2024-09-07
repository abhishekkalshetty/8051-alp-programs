org 00h
mov r0,#30h
mov r1,#0ah
mov b,r1
mov a,#00h
repeat : add a,@r0
inc r0
djnz r1,repeat
div ab
end