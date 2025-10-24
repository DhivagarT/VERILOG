module ring_counter_tb;

reg d,clk,rst;

wire [3:0]q;
integer i;

ring_counter dut(d,clk,rst,q);

always #4 clk=~clk;
initial rst=0;

initial begin
       $monitor("d=%b clk=%b rst=%b q=%b",d,clk,rst,q);
$dumpfile("ring_counter_wave.vcd");
$dumpvars(0,ring_counter_tb);

clk=0;
#8 rst=1;
d=4'b0001;

#30;
$finish;
end
endmodule
