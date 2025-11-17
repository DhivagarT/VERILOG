`timescale 1ns/1ps

module not_gate_tb;
reg a;
wire y;

not_gate dut(a,y);

initial begin
	$monitor("not of a  y=%0d",y);
	$dumpfile("not_gate_wave.vcd");
	$dumpvars(0,not_gate_tb);

	a=$urandom %6;
	#10;
	$finish;
end
endmodule
