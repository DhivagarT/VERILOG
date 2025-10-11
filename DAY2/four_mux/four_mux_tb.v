module four_mux_tb;
reg a,b,c,d,s0,s1;
wire out;

four_mux uut(.a(a),.b(b),.c(c),.d(d),.s0(s0),.s1(s1),.out(out));

initial begin
$monitor("Time=%0t a=%b b=%b c=%b d=%b s0=%b s1=%b out=%b",$time,a,b,c,d,s0,s1,out);
$dumpfile("four_mux_wave.vcd");
$dumpvars(0,four_mux_tb);


   a=0;b=0;c=0;d=0;s0=0;s1=0;
#5 a=0;b=0;c=0;d=1;s0=0;s1=1;
#5 a=0;b=0;c=1;d=0;s0=1;s1=0;
#5 a=0;b=0;c=1;d=1;s0=1;s1=1;
#5 a=0;b=1;c=0;d=0;s0=0;s1=0;
#5 a=0;b=1;c=0;d=1;s0=0;s1=1;
#5 a=0;b=1;c=1;d=0;s0=1;s1=0;
#5 a=0;b=1;c=1;d=1;s0=1;s1=1;
#5 a=1;b=0;c=0;d=0;s0=0;s1=0;
#5 a=1;b=0;c=0;d=1;s0=0;s1=1;
#5 a=1;b=0;c=1;d=0;s0=1;s1=0;
#5 a=1;b=0;c=1;d=1;s0=1;s1=1;
#5 a=1;b=1;c=0;d=0;s0=0;s1=0;
#5 a=1;b=1;c=0;d=1;s0=0;s1=1;
#5 a=1;b=1;c=1;d=0;s0=1;s1=0;
#5 a=1;b=1;c=1;d=1;s0=1;s1=1;
$finish;
end
endmodule
