org 000h
mov dptr,#100h
mov a,#06
movc a,@a+dptr
mov r2,a

org 100h
square: db 00h, 01h,04h,09h,16h,25h,36h,49h
end 