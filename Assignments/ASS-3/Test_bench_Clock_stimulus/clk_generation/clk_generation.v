module clk_generate;

reg clk;

always #2 clk=~clk;

initial begin
	clk=$urandom %2;
	$monitor("Time=%0t clk=%0d",$time,clk);
	#10;
	$finish;
end
endmodule
