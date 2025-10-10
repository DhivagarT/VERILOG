module nand_gate_tb;
reg a,b;
wire c;
nand_gate dut(.a(a),.b(b),.c(c));

initial begin
$monitor("a=%b b=%b c=%b",a,b,c);
$dumpfile("nand_gate_wave.vcd");
$dumpvars(0,nand_gate_tb);

a=0;b=0; 
#2 a=0;b=1;
#2 a=1;b=0;
#2 a=1;b=1;
#2;
$finish;
end
endmodule

