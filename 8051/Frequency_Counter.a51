org 00;
mov 30h,#00h;  freq counter
mov 31h,#05h;  total number of bytes to be searched
mov 32h,#02h;  byte to be searched
mov r0,#48h; starting address
l1:
	mov a,@r0;
	cjne a,32h,l2;
	inc 30h;
l2:
	inc r0;
	djnz 31h,l1;
end;
