module  EXCESS_3_to_BINARY_tb;

reg [3:0]z;
wire [3:0]a;
integer i;

EXCESS_3_to_BINARY dut(.a(a),.z(z));

initial begin
$monitor("z=%b a=%b",z,a);
$dumpfile("EXCESS_3_to_BINARY_wave.vcd");
$dumpvars(0,EXCESS_3_to_BINARY_tb);

for (i=3; i<15; i=i+1)begin
z=i;
#2;
end
$finish;
end
endmodule
