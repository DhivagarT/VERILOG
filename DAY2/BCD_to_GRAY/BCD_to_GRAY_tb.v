module BCD_to_GRAY_tb;

reg b3,b2,b1,b0;
wire g3,g2,g1,g0;

BCD_to_GRAY dut(.b3(b3),.b2(b2),.b1(b1),.b0(b0),.g3(g3),.g2(g2),.g1(g1),.g0(g0));     

initial begin
$monitor("b3=%b b2=%b b1=%b b0=%b g3=%b g2=%b g1=%b g0=%b",b3,b2,b1,b0,g3,g2,g1,g0);
$dumpfile("BCD_to_GRAY_wave.vcd");
$dumpvars(0,BCD_to_GRAY_tb);

initial begin
for(i=0; i<10; i=i+1) begin
{b3,b2,b1,b0} = i;
#5;
end    
end 
endmodule

