module SIPO_register_tb;
reg clk;
reg rst;
reg d3;
wire q3;
wire q2;
wire q1;
wire q0;

integer i;

SIPO_register dut(clk,rst,d3,q3,q2,q1,q0);
always #1 clk = ~clk;
initial rst=0;

initial begin
        $monitor("Time=%0t clk=%b rst=%b d3=%b |q3=%b |q2=%b |q1=%b |q0=%b",$time,clk,rst,d3,q3,q2,q1,q0);
        $dumpfile("SIPO_register_wave.vcd");
        $dumpvars(0,SIPO_register_tb);

        clk=0;
        d3 = 0;
        #1 rst=1;

           d3 = 0;
	   d3 = 1;
	   d3 = 0;
	   d3 = 1;
	   d3 = 1;
        #10;

$finish;
end
endmodule
