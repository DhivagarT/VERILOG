module D_latch_tb;

reg d;
reg enable;

wire q;

integer i;

D_latch dut(d,enable,q);

always #2 enable=~enable;

initial begin

$monitor("d=%b enable=%b q=%b",d,enable,q);
$dumpfile("D_latch_wave.vcd");
$dumpvars(0,D_latch_tb);

d=0;
enable=0;

for(i=0;i<4;i=i+1)begin
	d=i;
#5;
end
$finish;
end
endmodule
