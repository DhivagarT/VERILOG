module sum_of_twobit;
reg [7:0]a,b,c;

function [7:0]sum;

	input [7:0] a,b;
        sum=a+b;

endfunction

always begin
       	#2 a=~a;
	#3 b=~b;
end

always@(*)
	c=sum(a,b);

initial begin
	a=0;
	b=1;
	$monitor("Time=%0t a=%0d d=%0d c=%0d",$time,a,b,c);
	#20;
	$finish;
end
endmodule

