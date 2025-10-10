module half_sub_tb;
reg a,b;
wire borrow,diff;

half_sub dut(.a(a),.b(b),.borrow(borrow),.diff(diff));

initial begin

$monitor("Time=%0t a=%b b=%b borrow=%b diff=%b",$time,a,b,borrow,diff);
$dumpfile("half_sub_wave.vcd");
$dumpvars(0,half_sub_tb);

a=0;b=0;
#10 a=0;b=1;
#10 a=1;b=0;
#10 a=1;b=1;
#10;
$finish;
end
endmodule
