org 00h
mov r1,#02h
mov r2,#06h
cjne r2,#02h,next
next: jc prime 
mov b,#02h
mov a,r2
div ab
mov r0,a
inc r0
rpt: mov b,r1
mov a,r2
div ab
xch a,b
jz compo
inc r1
mov a,r1
cjne a,00h,rpt
prime: mov p0,#0ffh
sjmp done
compo: mov p0,#00h
done: nop
end