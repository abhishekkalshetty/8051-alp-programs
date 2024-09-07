org 00h																																															   org 0h
mov r0,#30h
mov r1,#35h
mov r2,#0ah
mov a,r2
mov a,r0
dec a
mov r0,a
mov a,r2
add a,r1
dec a
mov r1,a
back : mov a,@r0
       mov @r1,a
       dec r0
       dec r1
       djnz r2,back 
       end