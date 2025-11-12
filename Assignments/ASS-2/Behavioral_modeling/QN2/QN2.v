module reg_16bit_counter(output reg [15:0]q);

initial begin
	q=16'd0;
end

always begin
	#2 q=q+1;
end

initial begin
	$monitor("Time=0t q=%0d",$time,q);
	#30;
	$finish;
end
endmodule
