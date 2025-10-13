module BINARY_to_7_SEGMENT_tb;

reg [3:0]b;
wire [6:0]d;
integer i;

BINARY_to_7_SEGMENT dut(.b(b),.d(d));

initial begin
$monitor("Time=%0t b=%b d=%b",$time,b,d);
$dumpfile("BINARY_to_7_SEGMENT_wave.vcd");
$dumpvars(0,BINARY_to_7_SEGMENT_tb);

for(i=0; i<10; i=i+1)begin
b=i;
#10;
end
$finish;
end
endmodule
