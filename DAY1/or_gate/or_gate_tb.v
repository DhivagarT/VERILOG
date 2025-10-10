module or_gate_tb;
reg a,b;
wire c;
or_gate dut(.a(a),.b(b),.c(c));

initial begin
$dumpfile("or_gate_wave.vcd");
$dumpvars;

 a=0;b=0;#10
$display("a=%b b=%b c=%b",a,b,c);
 a=0;b=1;#10
$display("a=%b b=%b c=%b",a,b,c);
 a=1;b=0;#10
$display("a=%b b=%b c=%b",a,b,c);
 a=1;b=1;#10
$display("a=%b b=%b c=%b",a,b,c);
 #10;
$finish;
end
endmodule


