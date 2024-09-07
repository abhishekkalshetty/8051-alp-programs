org 000h
mov r0,#00h
mov r1,#05h
mov r2,#08h
mov a,r2
anl a,#0e0h
jnz done
mov a,r2
clr c
rpt: rrc a
jnc next
inc r0
next: djnz r1,rpt
cjne r0,#02h,done
mov p0,#00h
sjmp ext
done: mov p0,#0ffh
ext:
end