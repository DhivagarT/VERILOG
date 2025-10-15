module D_flip_flop_tb;
reg d;
reg clk;
reg rst_n;
wire q1;

D_flip_flop dut(d,clk,rst_n,q1);

always  #2clk=~clk;
initial begin
$monitor(" Time=%0t d=%b clk=%b rst_n=%b q1=%b",$time,d,clk,rst_n,q1);
$dumpfile("D_flip_flop_wave.vcd");
$dumpvars(0,D_flip_flop_tb);

	rst_n=0;
	d=0;
	clk=0;
	#5;

	rst_n=1;

	 d=0;
	 d=1;
	 d=0;
	 d=1;
	 #3;

$finish;
end
endmodule
	

