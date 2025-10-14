module even_odd_parity_checker_tb;
reg a,b,c;
wire [1:0]g;
wire [1:0]f;
integer i;

even_odd_parity_checker dut(.a(a),.b(b),.c(c),.g(g),.f(f));

initial begin
$monitor("a=%b b=%b c=%b |g=%b |f=%b",a,b,c,g,f);
$dumpfile("even_odd_parity_checker_wave.vcd");
$dumpvars(0,even_odd_parity_checker_tb);

for(i=0 ;i<8 ;i=i+1)begin
{a,b,c}=i;
#10;
end
$finish;
end
endmodule
