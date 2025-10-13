module priority_encoder_tb;

reg d3,d2,d1,d0;
wire [1:0]a;
wire v;
integer i;

priority_encoder uut(.d3(d3),.d2(d2),.d1(d1),.d0(d0),.a(a),.v(v));

initial begin
$monitor("d3=%b d2=%b d1=%b d0=%b a=%b v=%b",d3,d2,d1,d0,a,v);
$dumpfile("priority_encoder_wave.vcd");
$dumpvars(0,priority_encoder_tb);

for(i=0; i<16; i=i+1)begin
{d3,d2,d1,d0}=i;
#10;
end
$finish;
end
endmodule
