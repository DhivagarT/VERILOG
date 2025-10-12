module two_out_demux_tb;
reg a;
reg s;
wire o1;
wire o2;

two_out_demux dut(.a(a),.s(s),.o1(o1),.o2(o2));

initial begin
$monitor("a=%b s=%b o1=%b o2=%b",a,s,o1,o2);
$dumpfile("two_out_demux_wave.vcd");
$dumpvars(0,two_out_demux_tb);
a=0;s=0;
#1 a=0;s=1;
#1 a=1;s=0;
#1 a=1;s=1;
#1;
$finish;
end
endmodule

