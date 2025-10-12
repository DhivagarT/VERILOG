module full_sub_tb();
reg a,b,c;
wire diff,borr;
full_sub dut(.a(a),.b(b),.c(c),.diff(diff),.borr(borr));

initial begin
$monitor("Time=%0t a=%b b=%b c=%b diff=%b borr=%b",$time,a,b,c,diff,borr);
$dumpfile("full_sub_wave.vcd");
$dumpvars(8,full_sub_tb);

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

