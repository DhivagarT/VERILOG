`timescale 1ns/1ps

module simulation_example_tb;
reg [3:0]a,b;
wire [3:0]y;

simulation_example dut(.a(a),.b(b),.y(y));

initial begin
	$monitor("simulation end at Time=%0t a=%0d b=%0d y=%0d",$time,a,b,y);
	$dumpfile("simulation_example.vcd");
	$dumpvars(0,simulation_example_tb);

	a=0;b=0;
	#5 a=1;b=1;
	#5 a=0;b=1;
	#5 a=1;b=0;
	#35;        //5+5+5+35=50
	$finish;
end
endmodule

