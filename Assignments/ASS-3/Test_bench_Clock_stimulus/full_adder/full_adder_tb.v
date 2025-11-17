module full_adder_tb;

reg a,b,cin;
wire s,c;

full_adder dut(a,b,cin,s,c);

initial begin
	$monitor("a=%0d b=%0d cin=%0d s=%0d c=%0d",a,b,cin,s,c);
	$dumpfile("full_adder_wave.vcd");
	$dumpvars(0,full_adder_tb);

	a=0;b=0;cin=0;
	a=$urandom %2;
	b=$urandom %2;
	cin=$urandom %2;
	#10;
	$finish;
end
endmodule


