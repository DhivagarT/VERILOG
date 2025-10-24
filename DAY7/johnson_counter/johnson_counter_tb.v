module johnson_counter_tb;
reg d,clk,rst;
wire [3:0]qbar;

johnson_counter dut(d,clk,rst,qbar);

initial rst =0;
always #2 clk=~clk;

initial begin
	$monitor("d=%b clk=%b rst=%b qbar=%b",d,clk,rst,qbar);
	$dumpfile("johnson_counter_wave.vcd");
	$dumpvars(0,johnson_counter_tb);

	#5  rst=1;
	clk=0;

	d=0;
	#30;
	$finish;
end
endmodule

