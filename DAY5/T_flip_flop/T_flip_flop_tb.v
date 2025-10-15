module T_flip_flop_tb;

reg t;
reg clk;
reg rst_n;

wire q;
integer i;

T_flip_flop dut(t,clk,rst_n,q);

always #2 clk = ~clk;

initial begin
$monitor("t=%b clk=%b rst_n=%b q=%b",t,clk,rst_n,q);
$dumpfile("T_flip_flop.vcd");
$dumpvars(0,T_flip_flop_tb);

rst_n=0;
t=0;
clk=0;

#5 rst_n=1;
for (i=0;i<2;i=i+1)begin
   t=i%2;
#5;
end
$finish;
end
endmodule
