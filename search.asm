; Search a number in 8085
MVI B,05H; total number of bytes
MVI A,07H; element to be searched
LXI H,003CH; starting address
LOOP2: CMP M;
       JNZ LOOP1;
       MVI A,01H;
       STA 0042H;
       JMP HALT;
LOOP1: INX H;
       DCR B;
       JNZ LOOP2;
       MVI A,00H;
       STA 0042H;
HALT:  HLT;