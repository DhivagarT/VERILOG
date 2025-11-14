module difference;

integer a,b,c;

function integer diff;
	input integer x,y;
	begin
	diff=x-y;
end
endfunction


initial begin
	a=$urandom %15;
	b=$urandom %15;
	c=diff(a,b);
	$display("Time=%0t a=%0d b=%0d c=%0d",$time,a,b,c);
	#20;
	$finish;
end
endmodule
