org 00h
mov tmod,#02h
mov th0,#00h
mov tl0,#00h
repeat: mov r0,#148d
cpl p1.5
loop: setb tr0
wait: jnb tf0,wait
clr tr0
clr tf0
djnz r0,loop
repeat1: mov r1,#74d
cpl p1.5
loop1: setb tr0
wait1: JNB tf0,wait1
clr tr0
clr tf0
djnz r1,loop1
sjmp repeat
end