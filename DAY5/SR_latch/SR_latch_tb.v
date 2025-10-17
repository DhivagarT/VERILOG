module SR_latch_tb;

reg s;
reg r;
reg enb;

wire q;
integer i,j;

SR_latch dut(s,r,enb,q);

always #2 enb= ~enb;
initial enb=0;

initial begin
$monitor("s=%b r=%b enb=%b q=%b",s,r,enb,q);
$dumpfile("SR_latch_wave.vcd");
$dumpvars(0,SR_latch_tb);

s=0;
r=0;

for(i=0; i<6; i=i+1)begin
s=i;
end
for(j=0; j<6; j=j+1)begin
r=j;

#7;
end
$finish;
end
endmodule
