module JK_flip_flop_tb;

reg j;
reg k;
reg clk;
reg rst;

wire q;

integer a;
integer b;

JK_flip_flop dut(j,k,clk,rst,q);

always #2 clk =~clk;
initial clk=0;
initial rst=0;

initial begin
$monitor("Time=%0t j=%b k=%b clk=%b rst=%b q=%b",$time,j,k,clk,rst,q);
$dumpfile("JK_flip_flop_wave.vcd");
$dumpvars(0,JK_flip_flop_tb);

j=0;
k=0;

#5 rst=1;

for(a=0;a<4;a=a+1)begin
	j=a;end
	for(b=0;b<4;b=b+1)begin
		k=b;#10;
	end
	$finish;
end
endmodule
