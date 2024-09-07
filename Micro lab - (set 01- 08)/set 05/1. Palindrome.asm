org 000h
mov r0,#30h
mov r1,#08h
mov b,#00h
mov a,@r0
rpt: rlc a
mov r2,a
mov a,b
rrc a
mov b,a
mov a,r2
djnz r1,rpt
mov a,b
anl a,#0fh
mov b,a
mov a,@r0
anl a,#0fh
cjne a,b,nc
mov a,#00h
mov p0,a
sjmp last
nc: mov a,#0ffh
mov p0,a
last: mov a,#00h
end