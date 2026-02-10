module tb();
  reg [31:0]d;
  wire qout;
  
  prog_check dut(.d(d),.q(qout));
  
  initial begin
    
//     d=0;
//     #2 d=1;
//     #2 d=2;
//     #2 d=3;
//     #2 d=4;
//     #2 d=5;
//     #2 d=6;
//     #2 d=7;
//     #5;
    repeat(20)begin
    #3 d=$urandom %30;
    end
    #100;
    $finish;
  end
  
  initial begin
    $monitor("D=%d , Q=%d",d,qout);
    $dumpfile("prog_check.vcd");
    $dumpvars;
  end
endmodule
    
