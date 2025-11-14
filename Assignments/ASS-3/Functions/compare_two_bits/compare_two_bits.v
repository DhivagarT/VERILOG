module compare;
reg  [7:0]a,b;
reg	c;

function integer compare;
	input [7:0] x,y;
	begin
		if(x==y)
			compare=1;
		else
			compare= 0;
	end
endfunction

initial begin
	a=$urandom %7;
	b=$urandom %7;
	c= compare(a,b);
	$display("a=%0d b=%0d c=%0d",a,b,c);
	#20;
	$finish;
end
endmodule
