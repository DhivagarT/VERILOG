module nor_gate_tb;
reg a,b;
wire c;

nor_gate uut(.a(a),.b(b),.c(c));

initial begin

$monitor("a=%b b=%b c=%b",a,b,c);
$dumpfile("nor_gate_tb.vcd");
$dumpvars;

a=0;b=0;
#7 a=0;b=1;
#7 a=1;b=0;
#7 a=1;b=1;
#7;
$finish;
end
endmodule
