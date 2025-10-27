module mod_10_counter_tb;

reg clk;
reg rst;

wire [3:0]q;

mod_10_counter dut(clk,rst,q);

initial clk=0;
always #2 clk=~clk;

initial begin
	$monitor("Time=%0t clk=%b rst=%b q=%b",$realtime,clk,rst,q);
	$dumpfile("mod_10_counter_wave.vcd");
	$dumpvars(0,mod_10_counter_tb);

	rst=1;
	#3 rst=0;
	#50;
	$finish;
end
endmodule

