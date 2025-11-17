module d_ff_tb;

reg clk,rst_n,d;

wire q;

d_ff dut(clk,rst_n,d,q);

initial d=0;
always  #2 clk=~clk;

initial begin
	$monitor("time=%0t clk=%0d rst_n=%0d d=%0d q=%0d",$time,clk,rst_n,d,q);
	$dumpfile("d_ff_wave.vcd");
	$dumpvars(0,d_ff_tb);

	clk=0;
	rst_n=0;

	#3 rst_n=1;

	d=#5 $urandom_range(0,15);
	#30;
	$finish;
end
endmodule



