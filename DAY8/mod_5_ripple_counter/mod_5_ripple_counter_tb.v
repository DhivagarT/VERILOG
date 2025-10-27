module mod_5_ripple_counter_tb;
reg clk;
reg rst;

wire [2:0]q;

mod_5_ripple_counter dut(clk,rst,q);

initial rst=1;
initial clk=0;

always #2 clk=~clk;

initial begin
	$monitor("clk=%b rst=%b q=%b",clk,rst,q);
	$dumpfile("mod_5_ripple_counter_wave.vcd");
	$dumpvars(0,mod_5_ripple_counter_tb);

	
	#3 rst=0;
	#40;
	$finish;
end
endmodule

