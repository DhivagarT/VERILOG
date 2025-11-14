module odd_prority_xor;

reg [3:0]a;
reg y;

function odd_finding;
	input [3:0]a;begin
	if(a%2==0)
	       odd_finding=0;
       else
	       odd_finding=^a;
       end

endfunction

always	#3 a=~a;

always@(*)
	y=odd_finding(a);
initial begin
	a=$urandom %16;
	$monitor("time=%0t a=%0d y=%0d",$time,a,y);
	#20;
	$finish;
end
endmodule


