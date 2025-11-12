module multi_initial(output reg a,b);

initial begin
	a=0;
	b=1;
end

initial begin
       a=1;
       #2 a=0;
       #3 a=1;
end

always begin
	b=0;
	#2 b=1;
	#2 b=0;
end

initial begin
	$monitor("Time=%0t a=%0d b=%0d",$time,a,b);
	#30;
	$finish;
end
endmodule



