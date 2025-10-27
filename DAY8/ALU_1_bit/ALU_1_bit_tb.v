module ALU_1_bit_tb;
reg a,b;
reg [1:0]s;

wire y;

ALU_1_bit dut(a,b,s,y);

initial begin
	$monitor("a=%b b=%d s=%d y=%d",a,b,s,y);
	$dumpfile("ALU_1_bit_wave.vcd");
	$dumpvars(0,ALU_1_bit_tb);

	a=1'b0;
	b=1'b1;
        s=2'd0;#5
	s=2'd1;#5
	s=2'd2;#5;
	$finish;
end
endmodule
	

