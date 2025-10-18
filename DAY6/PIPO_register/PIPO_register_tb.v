module PIPO_register_tb; 
reg clk;
reg rst;
reg d3;
reg d2;
reg d1;
reg d0;

wire q3;
wire q2;
wire q1;
wire q0; 

PIPO_register dut(clk,rst,d3,d2,d1,d0,q3,q2,q1,q0);
 
 always #2 clk = ~clk;
 initial rst=0;
 
 initial begin
 
 $monitor("Time=%0t clk=%b rst=%b |d3=%b |d2=%b |d1=%b |d0=%b |q3=%b |q2=%b |q1=%b |q0=%b",$time,clk,rst,d3,d2,d1,d0,q3,q2,q1,q0);
 $dumpfile("PIPO_register_wave.vcd"); 
 $dumpvars(0,PIPO_register_tb);

 clk=0;
 d3 = 0;
 #2 rst=1;
 #1 rst=0;

d3=0;d2=0;d1=0;d0=1;
d3=0;d2=1;d1=0;d0=1;
d3=1;d2=0;d1=0;d0=1;
d3=1;d2=1;d1=1;d0=0;
#10; 
$finish;
end 
endmodule
