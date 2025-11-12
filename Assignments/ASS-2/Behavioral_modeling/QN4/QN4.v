module initial_always(output reg a,b);

initial begin
	a=0;
	#2 a=1;
	#3 a=0;
end

initial b=0;
always begin
	#3 b=~b;
end

initial begin
	$monitor("Time=%0t a=%0d b=%0d",$time,a,b);
	#30;
	$finish;
end
endmodule

