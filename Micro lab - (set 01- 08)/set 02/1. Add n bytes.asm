org 00h
mov r0,#30h
mov r1,#0ah
mov r2,#00h
clr a
rpt: add a,@r0
inc r0
jnc nocar
inc r2
nocar : djnz r1,rpt
mov @ r0,a
inc r0
mov a,r2
mov @r0,a
end