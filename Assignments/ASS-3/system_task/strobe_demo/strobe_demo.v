module strobe_demo;
reg [7:0]a,b;
reg [15:0]c;

always #2 a=a+1;
always #2 b=b+1;

always@(*) c=a*b;

initial  begin
	a=$urandom %16;
	b=$urandom %16;
	#10;
	$strobe("Time=%0t a=%0d b=%0d c=%0d",$time,a,b,c);
	#20;
	$finish;
	
end
endmodule
