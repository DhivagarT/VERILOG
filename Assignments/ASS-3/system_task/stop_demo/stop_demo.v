module stop_demo;
reg [3:0]a,b,c;

always begin
	#2 a=a+1;
	#2 b=b+1;
end


initial begin
	a=$urandom_range(0,8);
	b=$urandom_range(0,8);
	$display("simulation start");
	#20;
	$display("Time=%0t a=%0d b=%0d",$time,a,b);
	$stop;
	$display("press finish to resume");
	#20;
	$finish;
end
endmodule


