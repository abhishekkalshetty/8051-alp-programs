 org 0h
 mov dptr,#2000h
 mov r1,#30h
 mov r0,#0ah
 rpt:movx a,@dptr
   mov @r1,a
   inc r1
   inc dptr
   djnz r0,rpt
   end