module mod_20_counter_tb;
reg clk;
reg rst;

wire [4:0]q;

mod_20_counter dut(clk,rst,q);

initial clk=0;
always #2 clk=~clk;

initial begin
	$monitor("Time=%0t clk=%b rst=%b q=%b",$time,clk,rst,q);
	$dumpfile("mod_20_counter_wave.vcd");
	$dumpvars(0,mod_20_counter_tb);
	
	rst=1;
	#5 rst=0;
	#200;
	$display("Simulation finishing at time %0t", $time);
	$finish;
end
endmodule


