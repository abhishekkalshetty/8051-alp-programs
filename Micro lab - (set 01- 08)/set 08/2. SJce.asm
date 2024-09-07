org 00h
main:mov tmod,#20h
mov th1,#-3
mov tl1,#-3
mov scon,#50h
setb tr1
mov dptr,#message1
fn:clr a
movc a,@a+dptr
acall send
inc dptr
sjmp fn
s1:sjmp s1
send: mov sbuf,a
here:jnb ti,here
clr ti
ret
message1: db "SJCE",0
end