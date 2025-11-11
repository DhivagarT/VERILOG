module ALU_4bit_tb;
reg [3:0]a,b;
reg [1:0]s;
wire [3:0]y;

ALU_4bit dut(a,b,s,y);

initial begin
	$monitor("a=%b b=%b s=%b y=%b",a,b,s,y);
	$dumpfile("QN2_wave.vcd");
	$dumvars(0,ALU_4bit_tb);

	a=$random;
	b=$random;

	s[0]=2'b00;
	#3;
	s[1]=2'b01;
	#10;
	$finish;
end
endmodule
