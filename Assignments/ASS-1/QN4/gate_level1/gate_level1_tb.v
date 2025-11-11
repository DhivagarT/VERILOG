module gate_level1_tb;
reg a,b;
wire out;

gate_level1 dut(a,b,out);

initial begin
$dumpfile("gate_level1.vcd");
$dumpvars(0,gate_level1_tb);

a=0;
b=0;
#2 a=1;
#2 b=0;
#2 a=0;
#2 b=1;
#2 a=1;
#2 b=1;
#2;

$display("a=%0b b=%0b out=%0b",a,b,out);
$finish;
end
endmodule

