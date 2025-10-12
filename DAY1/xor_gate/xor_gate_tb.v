module xor_gate_tb;
reg a,b;
wire c;

xor_gate dut(.a(a),.b(b),.c(c));

initial begin
$monitor("a=%b b=%b c=%d",a,b,c);
$dumpfile("xor_gate_wave.vcd");
$dumpvars;

a=0;b=0;
#1 a=0;b=1;
#1 a=1;b=0;
#1 a=1;b=1;
#1;
$finish;
end
endmodule

