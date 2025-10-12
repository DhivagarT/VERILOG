module four_bit_comparator_tb;

reg a0,a1,b0,b1;
wire a,b,c;

four_bit_comparator dut(.a0(a0),.a1(a1),.b0(b0),.b1(b1),.x(x),.y(y),.z(z));

initial begin
$monitor("a0=%b a1=%b b0=%b b1=%b x=%b y=%b z=%b",a0,a1,b0,b1,x,y,z);
$dumpfile("four_bit_comparator_wave.vcd");
$dumpvars(0,four_bit_comparator_tb);

a0=0;a1=0;b0=0;b1=0;#5
a0=0;a1=0;b0=0;b1=1;#5
a0=0;a1=0;b0=1;b1=0;#5
a0=0;a1=0;b0=1;b1=1;#5
a0=0;a1=1;b0=0;b1=0;#5
a0=0;a1=1;b0=0;b1=1;#5
a0=0;a1=1;b0=1;b1=0;#5
a0=0;a1=1;b0=1;b1=1;#5
a0=1;a1=0;b0=0;b1=0;#5
a0=1;a1=0;b0=0;b1=1;#5
a0=1;a1=0;b0=1;b1=0;#5
a0=1;a1=0;b0=1;b1=1;#5
a0=1;a1=1;b0=0;b1=0;#5
a0=1;a1=1;b0=0;b1=1;#5
a0=1;a1=1;b0=1;b1=0;#5
a0=1;a1=1;b0=1;b1=1;#5;

$finish;
end 
endmodule
