module JK_latch_tb;

reg j;
reg k;
reg enb;

wire q;
integer a,b;

JK_latch dut(j,k,enb,q);

always #2 enb= ~enb;
initial enb=0;

initial begin
$monitor("j=%b k=%b enb=%b q=%b",j,k,enb,q);
$dumpfile("JK_latch_wave.vcd");
$dumpvars(0,JK_latch_tb);

j=0;
k=0;

for(a=0; a<6; a=a+1)begin
j=a;
end
for(b=0; b<6; b=b+1)begin
k=b;

#7;
end
$finish;
end
endmodule
