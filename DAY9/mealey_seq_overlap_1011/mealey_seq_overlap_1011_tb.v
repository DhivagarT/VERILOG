module mealey_seq_overlap_1011_tb;

reg clk,rst,in;
wire out;

mealey_seq_overlap_1011  dut(clk,rst,in,out);


always #5 clk=~clk;

initial begin
	$dumpfile("mealey_seq_overlap_1011_wave.vcd");
	$dumpvars(0,mealey_seq_overlap_1011_tb);
	$monitor("Time=%0t clk=%b rst=%b in=%b out=%b",$time,clk,rst,in,out);

	
end

initial begin
	rst=1;
	clk=0;
	#6 rst=0;
	in=1;

	#10 in=0;
	#10 in=1;
	#10 in=0;
	#10 in=1;
	#10 in=1;
	#10 in=1;
	#10;

	$finish;
end
endmodule

