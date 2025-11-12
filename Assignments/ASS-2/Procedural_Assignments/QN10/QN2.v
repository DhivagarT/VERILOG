module non_blocking(output reg a,b);
reg x,y;


initial begin
	x=0;
	y=1;
end

always@(*)begin
	 a<=x|y;
	 b<=x^y;
end

initial begin
	$monitor("Time=%0t a=%0d b=%0d",$time,a,b);
	#30;
	$finish;
end
endmodule


