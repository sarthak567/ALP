MVI A,00H;
MVI B,01H;
MVI C,0AH;
MVI D,00H;
LXI H,0040H;

L1: MOV M,A;
    INX H;
    ADD B;
    MOV D,A;
    MOV A,B;
    MOV B,D;
    DCR C;
    JNZ L1;
HLT;  