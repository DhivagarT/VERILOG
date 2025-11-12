module blocking_assign(output wire a,b);
reg x,y;

assign a=x|y;
assign b=x^y;

initial begin
       x=0;
       y=1;
end

initial begin
	$monitor("a=%0d b=%0d",a,b);
	#10;
	$finish;
end
endmodule

