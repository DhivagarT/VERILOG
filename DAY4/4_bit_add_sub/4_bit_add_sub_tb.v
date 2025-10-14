module four_bit_add_sub_tb;

reg [3:0]a;
reg [3:0]b;
reg mode;
wire [3:0]x;
wire cout;
integer i,j;

four_bit_add_sub dut(.a(a),.b(b),.mode(mode),.x(x),.cout(cout));
initial begin
$dumpfile("four_bit_add_sub.vcd");  
$dumpvars(0, four_bit_add_sub_tb);

       
$monitor("Time=%0t a=%b b=%b mode=%b x=%b cout=%b", $time, mode, a,b,x, cout);

mode = 0;
for (i = 0; i < 4; i = i + 1) begin
a = i;
for (j = 0; j < 4; j = j + 1) begin
b = j;
#5;
end
end

mode = 1;
for (i = 0; i < 4; i = i + 1) begin
a=i;
for (j = 0; j < 4; j = j + 1) begin
b = j;
#5;
end
end

$finish;
end
endmodule
