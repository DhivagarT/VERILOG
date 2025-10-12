module two_inp_mux_tb;
reg a,b,s;
wire c;

two_inp_mux uut(.a(a),.b(b),.s(s),.c(c));

initial begin
$monitor("a=%b b=%b s=%b c=%b",a,b,s,c);
$dumpfile("two_inp_mux_wave.vcd");
$dumpvars;

a=0;b=0;s=0;
#1 a=0;b=1;s=0;
#1 a=1;b=0;s=0;
#1 a=1;b=1;s=0;
#1 a=0;b=0;s=1;
#1 a=0;b=1;s=1;
#1 a=1;b=0;s=1;
#1 a=1;b=1;s=1;
#1
$finish;
end
endmodule

