
//Race condition using two always block

module race_condition;
reg a,b;

initial begin
	a=0;
	b=1;
end

always@(*)
	#1 a=b;


always@(*)
        #1 b=a;

initial begin
	$monitor("time=%0t a=%0d b=%0d",$time,a,b);
	#10;
	$finish;
end
endmodule
