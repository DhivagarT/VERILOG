module setup_functional_update(output reg [3:0]count);
initial begin
	count=4'd0;
end

always begin
	#3 count=~count;
end

initial begin
	$monitor("Time=%0t count=%0d",$time,count);
	#30;
	$finish;
end
endmodule
