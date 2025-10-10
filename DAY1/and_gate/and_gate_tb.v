module and_gate_tb();
     reg a,b;
     wire c;
 and_gate dut(.a(a),.b(b),.c(c));
 initial begin
  a=1'b0;b=1'b0;
 #5 a=1'b0;b=1'b1;
 #5 a=1'b1;b=1'b0;
 #5 a=1'b1;b=1'b1;
 #5;
 $finish;
 end
 initial begin
 $monitor( "a=%b b=%b c=%b" ,a,b,c);
 $dumpfile("and_gate_wave.vcd");
 $dumpvars;
 end
endmodule
