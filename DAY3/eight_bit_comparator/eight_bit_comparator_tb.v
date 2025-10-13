module eight_bit_comparator_tb;

reg [7:0]a;
reg [7:0]b;
wire x,y,z;
integer i,j;

eight_bit_comparator dut(.x(x),.y(y),.z(z),.a(a),.b(b));

initial begin
	$monitor("a=%b b=%b x(a>b)=%b y(a<b)=%b z(a==b)=%b",a,b,x,y,z);
	$dumpfile("eight_bit_comparator_wave.vcd");
	$dumpvars(0,eight_bit_comparator_tb);

	for(i=0;i<256;i=i+1)begin 
		for(j=0;j<256;j=j+1)begin
	a=i;
        b=j; #5;
end
end
$finish;
end
endmodule        
