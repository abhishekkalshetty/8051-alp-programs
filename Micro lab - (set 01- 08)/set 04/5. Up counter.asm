org 00h
again: mov a,#00h
upc: mov p0,a
acall delay
add a,#01h
da a
cjne a,#00h,upc
sjmp again
delay: mov r1,#0ffh
del1: mov r2,#0ffh
del2: mov r3,#0ffh
del3: djnz r3,del3
djnz r2,del2
djnz r1,del1
ret
end