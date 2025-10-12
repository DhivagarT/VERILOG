module one_bit_comparator_tb;
reg x,y;
wire a,b,c;

one_bit_comparator dut(.x(x),.y(y),.a(a),.b(b),.c(c));

initial begin
$monitor("x=%b y=%b a=%b b=%b c=%b",x,y,a,b,c);
$dumpfile("one_bit_comparator_wave.vcd");
$dumpvars(0,one_bit_comparator_tb);

x=0;y=0;
#5 x=0;y=1;
#5 x=1;y=0;
#5 x=1;y=1;
#5;
$finish;
end
endmodule
