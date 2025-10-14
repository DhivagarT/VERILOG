module carry_lkahead_adder_tb;

reg [3:0]a;
reg [3:0]b;
reg cin;

wire [3:0]c;
wire [3:0]s;
integer i;
integer j;
integer k;

carry_lkahead_adder dut(.a(a),.b(b),.cin(cin),.c(c),.s(s));

initial begin

$dumpfile("carry_lkahead_adder_wave.vcd");
$dumpvars(0,carry_lkahead_adder_tb);

for(i=0; i<16; i=i+1)begin
a=i;
for(j=0; j<16; j=j+1)begin 
b=j;
for(k=0; k<2; k=k+1)begin
cin=k;
$display("a=%b b=%b cin=%b | s=%b c=%b", a, b, cin, s, c);
#10;
end
end
end
$finish;
end
endmodule
