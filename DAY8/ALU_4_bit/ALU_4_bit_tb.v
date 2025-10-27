module ALU_4_bit_tb;
reg [3:0]a,b,s;

wire [3:0]y;
integer i;

ALU_4_bit dut(a,b,s,y);
always #5 a=$random;
always #5 b=$random;

initial begin
	$monitor("a=%h b=%h s=%h y=%h",a,b,s,y);
	$dumpfile("ALU_4_bit_wave.vcd");
	$dumpvars(0,ALU_4_bit_tb);

a=4'h4;
b=4'hA;
s=4'hE;

for(i=0;i<16;i=i+1)begin
	s=i[3:0];
        #10;
end
$finish;
end
endmodule

