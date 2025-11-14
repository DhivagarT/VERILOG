module square;
 integer a,c;

 function integer sq;
	 input integer a;begin
		 sq=a*a;
	 end
 endfunction

 initial begin
	 a=$urandom %10;
	 c=sq(a);
	 $display("a=%0d c=%0d",a,c);
	 #20;
	 $finish;
 end
 endmodule
