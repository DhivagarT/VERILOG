module four_out_demux_tb;
reg a;
reg s0,s1;
wire o1,o2,o3,o4;

four_out_demux dut(.a(a),.s0(s0),.s1(s1),.o1(o1),.o2(o2),.o3(o3),.o4(o4));

initial begin
$monitor("a=%b s0=%b s1=%b  o1=%b o2=%b o3=%b o4=%b",a,s0,s1,o1,o2,o3,o4);
$dumpfile("four_out_demux_wave");
$dumpvars(0,four_out_demux_tb);

a=0;s0=0;s1=0;
#8 a=0;s0=0;s1=1;
#8 a=0;s0=1;s1=0;
#8 a=0;s0=1;s1=1;
#8 a=1;s0=0;s1=0;
#8 a=1;s0=0;s1=1;
#8 a=1;s0=1;s1=0;
#8 a=1;s0=1;s1=1;
#8;
end
endmodule
