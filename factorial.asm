; Factorial of a number in 8085
MVI B,04H;
MOV A,B;
CPI 00H;
JZ xy;
CPI 01H;
JZ xy;
MOV C,B;
DCR B;
LOOP1: MOV D,B;
       MVI A,00H;
LOOP2: ADD C;
       DCR D;
       JNZ LOOP2;
       MOV C,A;
       DCR B;
       JNZ LOOP1;
       MOV A,C;
      STA 003CH;  
       JMP EXIT;
xy: MVI C,01H;
    MOV A,C;
    STA 003CH;
EXIT: RST 5;

