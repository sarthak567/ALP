; Multiplication in 8085
MVI A,00H;
MVI D,00H;
LXI H,003DH;
MOV C,M;
LXI H,003CH;
LOOP: MOV B,M;
      ADD B;
      MOV B,A;
      JNC XY;
      MOV A,D;
      ADI 01H;
      MOV D,A;
      MOV A,B;
XY: DCR C;
    JNZ LOOP;
STOP: RST 5;
