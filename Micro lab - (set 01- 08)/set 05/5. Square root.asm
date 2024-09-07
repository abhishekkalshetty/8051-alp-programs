org 000h
mov r1,#36
mov r0,#01
again: mov b,r0
mov a,r0
mul ab
cjne a,01h,next
sjmp jump1
next: jnc jump2
inc r0
sjmp again
jump2: dec r0
jump1: mov r0,00h
mov 41h,r0
end