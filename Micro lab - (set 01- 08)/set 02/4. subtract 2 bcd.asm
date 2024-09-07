org 00h
mov r0,#30h
inc r0
mov a,@r0
mov r2,a
mov a,#99h
subb a,r2
add a,#01h
dec r0
add a,@r0
da a
mov b,a
end