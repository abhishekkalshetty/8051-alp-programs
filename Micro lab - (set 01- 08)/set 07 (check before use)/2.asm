  org 00h
  mov tmod,#00h
  mov th0,#00h
  mov tl0,#00h
  repeat: mov r0,#6d
  cpl p1.5
  loop: setb tr0
  wait: jnb tf0,wait
  clr tr0
  clr tf0
  djnz r0,loop
  repeat1: mov r1,#3d
  cpl p1.5
  loop1: setb tr0
  wait1: jnb tf0,wait1
  clr tr0
  clr tf0
  djnz r1,loop1
  sjmp repeat
  end
