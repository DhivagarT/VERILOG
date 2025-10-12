module decoder_3_to_8_tb;

reg a,b,c;
wire o1,o2,o3,o4,o5,o6,o7,o8;

decoder_3_to_8 uut(.a(a),
                   .b(b),
                   .c(c),
                   .o1(o1),
                   .o2(o2),
                   .o3(o3),
                   .o4(o4),
                   .o5(o5),
                   .o6(o6),
                   .o7(o7),
                   .o8(o8));

initial begin
$monitor("a=%b b=%b c=%b o1=%b o2=%b o3=%b o4=%b o5=%b o6=%b o7=%b o8=%b",a,b,c,o1,o2,o3,o4,o5,o6,o7,o8);
$dumpfile("decoder_3_to_8_wave.vcd");
$dumpvars;

a=0;b=0;c=0;
#2 a=0;b=0;c=1;
#2 a=0;b=1;c=0;
#2 a=0;b=1;c=1;
#2 a=1;b=0;c=0;
#2 a=1;b=0;c=1;
#2 a=1;b=1;c=0;
#2 a=1;b=1;c=1;
#2;
$finish;
end
endmodule
