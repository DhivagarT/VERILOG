module one_bit_nor;

reg a,b,y;

always begin
       #1 a=~a;
	b=~b;
end

always@(*)
	y=~(a|b);


initial begin
	a=$urandom %2;
	b=$urandom %2;
	$monitor("Time=%0t a=%0d b=%0d y=%0d",$time,a,b,y);
	#10;
	$finish;
end
endmodule
