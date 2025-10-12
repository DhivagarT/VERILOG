module FullA_USING_2HalfA_tb;
reg a,b,c;
wire sum,carry;

FullA_USING_2HalfA dut(.a(a),.b(b),.c(c),.sum(sum),.carry(carry));

initial begin
$monitor("Time=%0t a=%b b=%b c=%b sum=%b carry=%b",$time,a,b,c,sum,carry);
$dumpfile("FullA_USING_2HalfA_wave.vcd");
$dumpvars(1,FullA_USING_2HalfA_tb);
a=0;b=0;c=0;
#10 a=0;b=0;c=1;
#10 a=0;b=1;c=0;
#10 a=0;b=1;c=1;
#10 a=1;b=0;c=0;
#10 a=1;b=0;c=1;
#10 a=1;b=1;c=0;
#10 a=1;b=1;c=1;
#10;
$finish;
end
endmodule
