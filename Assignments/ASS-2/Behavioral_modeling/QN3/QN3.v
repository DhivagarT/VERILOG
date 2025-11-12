module multiblock(output reg a,b);

initial begin
	a=0;
	b=1;
end

always begin
	 #2 a<=~a;
end
always begin
	#3 b<=~b;
end

initial begin
	$monitor("Time=%0t a=%0d b=%0d ",$time,a,b);
	#20;
	$finish;
end
endmodule


