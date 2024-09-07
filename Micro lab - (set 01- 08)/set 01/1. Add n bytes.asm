org 0h
mov r0,#30h
mov a,#00h
mov r2,#0ah
mov r3,#00h
loop : add a,@r0
      jnc next
	  inc r3
next : inc r0
      djnz r2,loop
	  inc r0
	  mov @r0,a
	  inc r0
	  mov a,r3
	  mov @r0,a
	  end
