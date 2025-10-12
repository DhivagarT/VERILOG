module encoder_4_t0_2_tb;
reg d0,d1,d2,d3;
wire a,b;

encoder_4_t0_2 uut(.d0(d0),.d1(d1),.d2(d2),.d3(d3),.a(a),.b(b));

initial begin
$monitor("a=%b b=%b d0=%b d1=%b d2=%b d3=%b",a,b,d0,d1,d2,d3);
$dumpfile("encoder_4_t0_2_wave.vcd");
$dumpvars(0,encoder_4_t0_2_tb);

d3=0;d2=0;d1=0;d0=0;
#5;
#5 d3=0;d2=0;d1=0;d0=1;
#5 d3=0;d2=0;d1=1;d0=0;
#5 d3=0;d2=1;d1=0;d0=0;
#5 d3=1;d2=0;d1=0;d0=0;
#5;
$finish;

end 
endmodule


