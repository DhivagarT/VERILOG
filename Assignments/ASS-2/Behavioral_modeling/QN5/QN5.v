module clk_generate(output reg clk);

initial begin
       	clk=0;

        forever	#2 clk=~clk;
end


initial begin
	$monitor("Time=%0t clk=%0d",$time,clk);
	#20;
	$finish;
end
endmodule
