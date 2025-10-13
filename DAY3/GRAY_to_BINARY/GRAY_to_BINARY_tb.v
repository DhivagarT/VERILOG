module GRAY_to_BINARY_tb;
reg g3,g2,g1,g0;
wire b3,b2,b1,b0;

GRAY_to_BINARY dut(.g3(g3),.g2(g2),.g1(g1),.g0(g0),.b3(b3),.b2(b2),.b1(b1),.b0(b0));

wire [3:0] g = {g3, g2, g1, g0};
wire [3:0] b = {b3, b2, b1, b0};

initial begin
$monitor("Time=%0t |g=%b |b=%b",$time,g,b);
$dumpfile("GRAY_to_BINARY_wave.vcd");
$dumpvars(0,GRAY_to_BINARY_tb);

    g3=0;g2=0;g1=0;g0=0;
#10 g3=0;g2=0;g1=0;g0=1;
#10 g3=0;g2=0;g1=1;g0=1;
#10 g3=0;g2=0;g1=1;g0=0;
#10 g3=0;g2=1;g1=1;g0=0;
#10 g3=0;g2=1;g1=1;g0=1;
#10 g3=0;g2=1;g1=0;g0=1;
#10 g3=0;g2=1;g1=0;g0=0;
#10 g3=1;g2=1;g1=0;g0=0;
#10 g3=1;g2=1;g1=0;g0=1;
#10 g3=1;g2=0;g1=1;g0=0;
#10 g3=1;g2=1;g1=1;g0=1;
#10 g3=1;g2=1;g1=1;g0=0;
#10 g3=1;g2=0;g1=1;g0=0;
#10 g3=1;g2=0;g1=0;g0=1;
#10 g3=1;g2=0;g1=0;g0=0;
#10;
end endmodule


