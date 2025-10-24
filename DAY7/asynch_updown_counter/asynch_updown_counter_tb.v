module asynch_updown_counter_tb;

reg [3:0]d;
reg clk,rst;
reg enb;

wire [3:0]q;
integer i;

asynch_updown_counter dut(d,clk,rst,enb,q);

initial rst=0;
always #2 clk=~clk;

initial begin 
	$monitor("d=%b clk=%b rst=%b enb=%b q=%b",d,clk,rst,enb,q);
	$dumpfile("asynch_updown_counter_wave.vcd");
	$dumpvars(0,asynch_updown_counter_tb);

	clk=0;
	#5 rst=1;

	d=$random;
	enb=0;
	#10 enb=1;

	#40;
	$finish;
end
endmodule
	

