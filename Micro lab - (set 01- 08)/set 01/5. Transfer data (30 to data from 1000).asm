 org 00h
 mov r0,#30h
 mov dptr,#1000h
 mov r2,#0ah
 repeat: movx a,@dptr
 xch a,@r0
 movx @dptr,a
 inc r0
 inc dptr
 djnz r2,repeat
 end