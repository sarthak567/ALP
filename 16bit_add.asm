LXI H,003CH;
MOV A,M;
INX H;
MOV B,M;
ADD B;
STA 003AH;
INX H;
MOV A,M;
INX H;
MOV B,M;
ADC B;
STA 0039H;
MVI A,01H;
STA 0038H;
HLT;