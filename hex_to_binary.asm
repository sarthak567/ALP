MVI C,08H;
MVI A,0FFH;
LXI H,0040H;

l1:   RAL;
      JNC l2;
      MVI M,01H;
      JMP l3;
l2:   MVI M,00H;   
l3:   INX H;
      DCR C;
      JNZ l1;
HLT;
      