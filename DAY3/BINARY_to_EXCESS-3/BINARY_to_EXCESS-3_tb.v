module BINARY_to_EXCESS_3_tb;

reg [3:0]a;
wire [3:0]x;
integer i;

BINARY_to_EXCESS_3 uut(.x(x),.a(a));

initial begin
$monitor("Time=%0t | a=%b | x=%b",$time,a,x);
$dumpfile("BINARY_to_EXCESS_3_wave.vcd");
$dumpvars(0,BINARY_to_EXCESS_3_tb);

for(i=0; i<16; i= i+1)begin
a=i;
#10;
end
$finish;
end
endmodule

