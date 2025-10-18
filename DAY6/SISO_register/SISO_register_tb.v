module SISO_register_tb;
reg clk;
reg rst;
reg d3;
wire q0;
integer i;

SISO_register dut(clk,rst,d3,q0);
always #2 clk = ~clk;
initial rst=0;

initial begin
	$monitor(" clk=%b rst=%b d3=%b q0=%b",clk,rst,d3,q0);
	$dumpfile("SISO_register_wave.vcd");
	$dumpvars(0,SISO_register_tb);

        clk=0;
	d3 = 0;
	#4 rst=1;

	for(i=0; i<8; i=i+1)begin
		d3=i;
	#7;
end
$finish;
end
endmodule
