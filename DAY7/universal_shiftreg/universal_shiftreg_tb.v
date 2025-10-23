module universal_shiftreg_tb;
reg [1:0]s;
reg sR,sL;
reg [3:0]d;
reg clk,clr;

wire [3:0]q;

universal_shiftreg dut(s,sR,sL,d,clk,clr,q);

always #5 clk = ~clk;
initial clk=0;

initial begin
	$monitor("T=%0t |s=%b |sR=%b |sL=%b |d=%b |clk=%b |clr=%b |q=%b",$time,s,sR,sL,d,clk,clr,q);
	$dumpfile("universal_shiftreg_wave.vcd");
	$dumpvars(0,universal_shiftreg_tb);

	clr= 1;
	#10 clr =0;

	s=2'b01;sR=1;sL=0;d=4'b0001;
        #10;
	s=2'b10;sR=0;sL=1;d=4'b1000;
	#40;
	s=2'b11;sR=0;sL=0;d=4'b1100;
	#30;
	s=2'b00;sR=0;sL=0;
	#40;
$finish;
end
endmodule
