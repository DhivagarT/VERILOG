module carry_lk_adder_tb;

reg [3:0] a;
reg [3:0] b;
reg cin;
wire [3:0] s;
wire cout;

integer i, j, k;

carry_lk_adder dut (.a(a), .b(b), .cin(cin), .s(s), .cout(cout));

initial begin
$monitor("time=%0t | a=%b | b=%b | cin=%b | s=%b | cout=%b", $time, a, b, cin, s, cout);
$dumpfile("carry_lk_adder_wave.vcd");
$dumpvars(0, carry_lk_adder_tb);

for (i=0; i<8; i=i+1) begin
for (j=0; j<8; j=j+1) begin
for (k=0; k<2; k=k+1) begin
a = i;
b = j;
cin = k;
#10;
end
end
end
$finish;
end
endmodule
