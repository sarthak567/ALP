; Sorting 5 bytes in ascending order
MVI B,05H;
LOOP1: MOV C,B;
       LXI H,003CH;
LOOP2: MOV A,M;
       INX H;
       CMP M;
       JC SKIP;
       MOV D,M;
       MOV M,A;
       DCX H;
       MOV M,D;
       INX H;
SKIP:  DCR C;
       JNZ LOOP2;
       DCR B;
       JNZ LOOP1;
       HLT;
