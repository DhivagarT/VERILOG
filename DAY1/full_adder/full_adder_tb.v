module full_adder_tb;
reg a,b,cin,sum,carry;
wire a1,b1,c1;

full_adder dut(.a(a),.b(b),.cin(cin),.sum(sum),.carry(carry));

initial begin
$monitor("Time=%0t a=%b b=%b cin=%b sum=%b carry=%b ",$time,a,b,cin,sum,carry);
$dumpfile("full_adder_wave.vcd");
$dumpvars(8,full_adder_tb);

a=0;b=0;cin=0;
#10 a=0;b=0;cin=1;
#10 a=0;b=1;cin=0;
#10 a=0;b=1;cin=1;
#10 a=1;b=0;cin=0;
#10 a=1;b=0;cin=1;
#10 a=1;b=1;cin=0;
#10 a=1;b=1;cin=1;
#10;
$finish;
end
endmodule
