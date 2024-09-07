org 000h
mov r2,#05h
rpt1: mov r1,#05h
dec r1
mov r0,#30h
rpt2: mov a,@r0
inc r0
mov b,@r0
cjne a,b,nex1
nex1: jc next
xch a,b
mov @r0,b
dec r0
mov @r0,a
inc r0
next: djnz r1,rpt2
djnz r2,rpt1
end