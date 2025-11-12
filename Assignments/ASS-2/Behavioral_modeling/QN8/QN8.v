module two_always(output reg x,y);
initial begin
	x=0;
	y=1;
end

always #2 x=~x;
always #4 y=~y;

initial begin
	$monitor("Time=%0t x=%0d y=%0d ",$time,x,y);
	#40;
	$finish;
end
endmodule
