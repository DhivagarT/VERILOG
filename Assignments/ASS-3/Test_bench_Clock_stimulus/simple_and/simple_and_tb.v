module and_gate_tb;

reg a, b;
wire y;
reg expected;

and_gate dut(a, b, y);

initial begin
    $dumpfile("and_tb.vcd");
    $dumpvars(0, and_gate_tb);

    a = 0; b = 0; #5;
    expected = a & b;
    if (y !== expected)
        $display("ERROR at %0t: a=%0d b=%0d y=%0d expected=%0d", $time, a, b, y, expected);

    a = 0; b = 1; #5;
    expected = a & b;
    if (y !== expected)
        $display("ERROR at %0t: a=%0d b=%0d y=%0d expected=%0d", $time, a, b, y, expected);

    a = 1; b = 0; #5;
    expected = a & b;
    if (y !== expected)
        $display("ERROR at %0t: a=%0d b=%0d y=%0d expected=%0d", $time, a, b, y, expected);

    a = 1; b = 1; #5;
    expected = a & b;
    if (y !== expected)
        $display("ERROR at %0t: a=%0d b=%0d y=%0d expected=%0d", $time, a, b, y, expected);

    $finish;
end

endmodule

