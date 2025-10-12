module half_adder_tb;
reg a,b;
wire sum,carry;

half_adder dut(.a(a),.b(b),.sum(sum),.carry(carry));

initial begin

$monitor("Time=%1t a=%b b=%b sum=%b carry=%b",$time,a,b,sum,carry);
$dumpfile("half_adder_wave.vcd");
$dumpvars(1,half_adder_tb);

a=0;b=0;
#10 a=0;b=1;
#10 a=1;b=0;
#10 a=1;b=1;
#10;
$finish;
end
endmodule
