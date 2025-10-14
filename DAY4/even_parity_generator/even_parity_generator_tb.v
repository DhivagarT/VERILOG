module even_parity_generator_tb;
reg a,b,c;
wire g;
integer i;

even_parity_generator dut(.a(a),.b(b),.c(c),.g(g));

initial begin
$monitor("a=%b b=%b c=%b g=%b",a,b,c,g);
$dumpfile("even_parity_generator_wave.vcd");
$dumpvars(0,even_parity_generator_tb);

for(i=0 ;i<8 ;i=i+1)begin
{a,b,c}=i;
#10;
end
$finish;
end
endmodule
