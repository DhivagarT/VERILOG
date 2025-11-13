module sub_8_bit;
reg [7:0]a;
reg [7:0]b;
reg [7:0]c;

task sub;begin
	a=$urandom;
	b=$urandom;
	#2 a=~a;
	#3 b=~b;
end
endtask

always@(*) c=a-b;
integer i;

initial begin
	$monitor("Time=%0t a=%0d b=%0d c=%0d",$time,a,b,c);

	for(i=0;i<10;i=i+1)begin
	sub;
	#5;
end
$finish;
end
endmodule


