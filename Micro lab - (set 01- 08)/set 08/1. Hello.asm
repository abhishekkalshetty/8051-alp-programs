org 00h
main: mov Tmod,#20h
mov th1,#-3
mov tl1,#-3
mov scon,#50h
setb tr1
s1: jnb p2.5,next
mov dptr,#message2
fn:clr a
movc a,@a+dptr
jz s1
acall send
inc dptr
sjmp fn
next: mov dptr,#message1
ln: clr a
movc a,@a+dptr
jz s1
acall send
inc dptr
sjmp ln
send: mov sbuf,a
here: jnb ti,here
clr ti
ret

message1:db "HELLO",0
message2:db "WELCOME",0
end
