module addition_of_8_bits;
reg [7:0]a,b;
reg [8:0]c;
task add; begin

a=0;
b=1;
#2 a=~a;
#3 b=~b;

end
endtask

always@(*)
	c=a+b;

initial begin
	$monitor("Time=%0t  a=%0h  b=%0h  c=%0h ",$time,a,b,c);
	repeat(5)begin
		add;
		#5;
	end
	$finish;
end
endmodule

	
