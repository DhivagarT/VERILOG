module rpl_carry_adder_tb;
reg [3:0]a;
reg [3:0]b;
reg cin;
wire [3:0]s;
wire [3:0]c;
integer i;
integer j;
integer k;

rpl_carry_adder dut(.a(a),.b(b),.cin(cin),.s(s),.c(c));

initial begin
$monitor("a=%b b=%b cin=%b s=%b c=%b",a,b,cin,s,c);
$dumpfile("rpl_carry_adder_wave.vcd");
$dumpvars(0,rpl_carry_adder_tb);

for(i=0; i<8; i=i+1)begin
	a=i;
	for(j=0; j<8; j=j+1)begin
        b=j;
	for(k=0; k<2; k=k+1)begin
        cin=k;
#10;
end
end
end
$finish;
end
endmodule


