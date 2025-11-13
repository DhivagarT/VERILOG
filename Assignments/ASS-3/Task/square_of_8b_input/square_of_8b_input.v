module square_of_8bit;

reg [7:0]a,c;

initial begin
        a=2;
	
end

task square;begin
	c=a**2;
end
endtask

integer i;

initial begin
	$monitor("Time=%0t a=%0d c=%0d",$time,a,c);
	for(i=0;i<10;i=i+1)begin
		a = $urandom % 16;
        	 square;
		#3;
	end
	$finish;
end
endmodule

