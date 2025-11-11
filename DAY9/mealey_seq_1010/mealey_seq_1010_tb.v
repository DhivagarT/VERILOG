module mealey_seq_1010_tb;
reg clk,rst,in;
wire out;

mealey_seq_1010 dut(clk,rst,in,out);

always #5 clk=~clk;



initial begin
	$monitor("Time=%0t clk=%b rst=%b in=%b out=%b",$time,clk,rst,in,out);
	$dumpfile("mealey_seq_1010.vcd");
	$dumpvars(0,mealey_seq_1010_tb);

	clk=0;
	rst=1;
	in=1;

	#6 rst=0;

	in=1;
	#10 in=0;
	#10 in=1;
	#10 in=0;
	#10 in=1;
	#10 in=1;
	#10 in=1;
	#10 in=0;
	#10 in=1;
	#10 in=0;
	$finish;


end
endmodule




