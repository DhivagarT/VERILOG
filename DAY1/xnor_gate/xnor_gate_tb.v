module xnor_gate_tb;
reg a,b;
wire c;

xnor_gate uut(.a(a),.b(b),.c(c));

initial begin

$monitor("a=%b b=%b c=%b",a,b,c);
$dumpfile("xnor_gate_wave.vcd");
$dumpvars;

a=0;b=0;
#3 a=0;b=1;
#3 a=1;b=0;
#3 a=1;b=1;
#3;
$finish;
end
endmodule

