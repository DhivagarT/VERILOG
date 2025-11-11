module moore_seq_nonoverlap_1001_tb;

reg clk, rst_n, in;
wire out;

moore_seq_nonoverlap_1001 dut (.clk(clk), .rst_n(rst_n), .in(in), .out(out));

always #5 clk = ~clk;

initial begin
    $monitor("Time=%0t clk=%b rst_n=%b in=%b out=%b",$time,clk,rst_n,in,out);
    $dumpfile("moore_seq_nonoverlap_1001_wave.vcd");
    $dumpvars(0,moore_seq_nonoverlap_1001_tb);
end

initial begin
    clk = 0;
    rst_n = 0;
    in = 0;
    #10 rst_n = 1;

    in = 1; #10;
    in = 0; #10;
    in = 0; #10;
    in = 1; #10;

    in = 0; #10;
    in = 1; #10;
    in = 0; #10;
    in = 1; #10;

    $finish;
end

endmodule

