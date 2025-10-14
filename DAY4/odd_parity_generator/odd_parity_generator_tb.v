module odd_parity_generator_tb;
reg a,b,c;
wire g;
integer i;

odd_parity_generator uut(.a(a),.b(b),.c(c),.g(g));
initial begin
$monitor("Time=%0t a=%b b=%b c=%b g=%b",$time,a,b,c,g);
$dumpfile("odd_parity_generator_wave.vcd");
$dumpvars(0,odd_parity_generator_tb);

for(i=0; i<8; i=i+1)begin
{a,b,c}=i;#10;end

$finish;
end
endmodule

