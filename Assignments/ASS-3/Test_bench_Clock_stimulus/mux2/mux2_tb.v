module mux2_tb;

reg a, b, sel;
wire y;


mux2 dut(.a(a), .b(b), .sel(sel), .y(y));

initial begin
    $monitor("Time=%0t | a=%b b=%b sel=%b | y=%b",
              $time, a, b, sel, y);

    $dumpfile("mux2_wave.vcd");
    $dumpvars(0, mux2_tb);

  
    a = 0; 
    b = 1;
    sel = 0;

    #5 sel = 1;
    #5 sel = 0;
    #5 sel = 1;
    #5 sel = 0;

    #10 $finish;
end

endmodule

