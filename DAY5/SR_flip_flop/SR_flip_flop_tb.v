module SR_flip_flop_tb;

reg s;
reg r;
reg clk;
reg rst;

wire q;

integer i,j;

SR_flip_flop dut(s,r,clk,rst,q);

always #4 clk=~clk;
initial clk=0;
initial begin
$monitor("s=%d r=%d clk=%d rst=%d q=%d",s,r,clk,rst,q);
$dumpfile("SR_flip_flop_wave.vcd");
$dumpvars(0,SR_flip_flop_tb);

rst=0;
s=0;
r=0;

#6 rst=1;
for (i=0;i<4;i=i+1)begin
	s=i;end

	for(j=0;j<4;j=j+1)begin
		r=j;#10;
	end
	$finish;
end
endmodule

