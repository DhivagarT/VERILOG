module BINARY_to_GRAY_tb;
reg b3,b2,b1,b0;
wire g3,g2,g1,g0;

BINARY_to_GRAY uut(.g3(g3),.g2(g2),.g1(g1),.g0(g0),.b3(b3),.b2(b2),.b1(b1),.b0(b0));


initial begin
$monitor("Time=%0t |g3=%b |g2=%b |g1=%b |g0=%b |b3=%b |b2=%b |b1=%b |b0=%b",$time,g3,g2,g1,g0,b3,b2,b1,b0);
$dumpfile("BINARY_to_GRAY_wave.vcd");
$dumpvars(0,BINARY_to_GRAY_tb);

 b3=0;b2=0;b1=0;b0=0; 
#5 b3=0;b2=0;b1=0;b0=1; 
#5 b3=0;b2=0;b1=1;b0=0; 
#5 b3=0;b2=0;b1=1;b0=1; 
#5 b3=0;b2=1;b1=0;b0=0; 
#5 b3=0;b2=1;b1=0;b0=1; 
#5 b3=0;b2=1;b1=1;b0=0; 
#5 b3=0;b2=1;b1=1;b0=1; 
#5 b3=1;b2=0;b1=0;b0=0; 
#5 b3=1;b2=0;b1=0;b0=1; 
#5 b3=1;b2=0;b1=1;b0=0; 
#5 b3=1;b2=0;b1=1;b0=1; 
#5 b3=1;b2=1;b1=0;b0=0; 
#5 b3=1;b2=1;b1=0;b0=1; 
#5 b3=1;b2=1;b1=1;b0=0; 
#5 b3=1;b2=1;b1=1;b0=1; 
#5;
end
endmodule

