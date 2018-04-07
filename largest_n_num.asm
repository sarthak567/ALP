;Largest number among 'n' numbers
MVI A,00H;
LXI H,0018H;
MVI C,05H;

L1: MOV B,C;
    CMP M;
    MOV D,M;
    JNC L2;
    MOV A,M;
L2: INX H;
    DCR C;
    JNZ L1;
HALT: hlt ;
