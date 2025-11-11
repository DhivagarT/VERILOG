module FA_using_HA_tb;
reg a,b,cin;
wire sum,carry;

FA_using_HA dut(a,b,cin,sum,carry);

always #2 a=~a;
always #2 b=~b;
always #2 cin=~cin;

initial begin
	$monitor("a=%b b=%b cin=%b sum=%b carry=%b",a,b,cin,sum,carry);
	$dumpfile("QN3.vcd");
	$dumpvars(0,FA_using_HA_tb);

	a=1'b0;
	b=1'b1;
	cin=1'b0;
	#10;
	$finish;
end
endmodule


