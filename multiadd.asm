; Multibyte Addition in 8085
MVI A,00H;
MVI D,00H;
MVI C,05H;
LXI H,0030H;
LOOP: MOV B,M;
      ADD B;
      MOV B,A;
      JNC XY;
      MOV A,D;
      ADI 01H;
      MOV D,A;
      MOV A,B;
XY: DCR C;
    JZ STOP;
    INX H;
    JMP LOOP;
STOP: RST 5;
