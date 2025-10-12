module decoder_2_to_4_tb;

reg a,b;
wire o1,o2,o3,o4;

decoder_2_to_4 uut(.a(a),.b(b),.o1(o1),.o2(o2),.o3(o3),.o4(o4));

initial begin
$monitor("a=%b b=%b o1=%b o2=%b o3=%b o4=%b",a,b,o1,o2,o3,o4);
$dumpfile("decoder_2_to_4_wave.vcd");
$dumpvars;

a=0;b=0;
#2 a=0;b=1;
#2 a=1;b=0;
#2 a=1;b=1;
#2;
$finish;
end
endmodule

