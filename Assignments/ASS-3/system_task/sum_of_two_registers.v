module sum;
reg a,b,c;

initial begin
	a=0;
	b=1;
	c=a+b;
	$display("a=%0b b=%0b c=%0b",a,b,c);
	#10;
	$finish;
end
endmodule

