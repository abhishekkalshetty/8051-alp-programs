org 00h
mov r0,#40h
mov a,@r0
mov b,a
anl a,#0fh
add a,#30h
mov 30h,a
mov a,b
anl a,#0f0h
swap a
add a,#30h
mov 31h,a
end