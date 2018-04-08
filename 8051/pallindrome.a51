;check a number is pallindrome or not
org 00;
mov a,#0A5H
mov 40H,#0A5H
mov r0,#08H
mov b,#0
loop:
	rrc a
	mov r1,a
	mov a,b
	rlc a
	mov b,a
	mov a,r1
	djnz r0,loop
mov a,b
cjne a,40H,np
mov a,#01H
jmp ends
np:
	mov a,#00H
ends:
	end
	
