org 000h
mov a,30h
mov b,31h
mul ab
mov r2,a
mov r3,30h
mov r4,31h
loop: clr c
mov a,r3
cjne a,04h,skip
sjmp next
skip: jc no
clr c
mov a,r3
subb a,r4
mov r3,a
sjmp yes
no: clr c
mov a,r4
subb a,r3
mov r4,a
yes: mov a,r3
clr c
cjne a,04h,loop
next: mov a,r2
mov b,r3
div ab 
mov 40h,a
mov 41h,r3
end