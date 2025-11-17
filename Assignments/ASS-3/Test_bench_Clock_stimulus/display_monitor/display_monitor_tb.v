module mux2to1_tb;

reg a, b, sel;
wire y;

mux2to1 dut (.a(a), .b(b), .sel(sel), .y(y));

initial begin
    $monitor("TIME=%0t | a=%0d b=%0d sel=%0d  y=%0d",
              $time, a, b, sel, y);
end

initial begin
    $display("Starting MUX Testbench...");
    $dumpfile("mux_monitor.vcd");
    $dumpvars(0, mux2to1_tb);

    a = 0; b = 1; sel = 0;
    #10;
    $display("After 1st stimulus applied at time %0t", $time);

    sel = 1;
    #10;
    $display("After sel toggled to 1 at time %0t", $time);

    a = 1;
    #10;
    b = 0; sel = 0; #10;

    $display("Ending simulation at time %0t", $time);
    $finish;
end

endmodule

