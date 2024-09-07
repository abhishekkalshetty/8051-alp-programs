org 00h
mov a,#05h
mov r0,a
acall factorial
mov 40h,a
sjmp last1
factorial: dec r0
cjne r0,#01h,product
sjmp last
product: mov b,r0
mul ab
acall factorial
last: ret
last1:
end