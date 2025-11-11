module comp_tb;
reg [1:0]a,b;
wire x,y,z;

comp dut(a,b,x,y,z);

always #2 a=$random;
always #2 b=$random;

initial begin
	$monitor("a=%b b=%b x=%b y=%b z=%b",a,b,x,y,z);
	$dumpfile("comp_wave.vcd");
	$dumpvars(0,comp_tb);

	a= 2'b00;
	b= 2'b01;
	#30;
	$finish;
end
endmodule



	
