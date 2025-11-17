module reg_posedge_tb;

reg clk;
reg [3:0] d;
wire [3:0] q;

reg_posedge dut (.clk(clk), .d(d), .q(q));

initial clk = 0;
always #5 clk = ~clk;

initial begin
    $monitor("TIME=%0t | clk=%0d d=%0d q=%0d", $time, clk, d, q);
    $dumpfile("reg_posedge.vcd");
    $dumpvars(0, reg_posedge_tb);

    d = 4'd5;  #10;
    d = 4'd9;  #10;
    d = 4'd12; #10;
    d = 4'd3;  #10;

    #10;
    $finish;
end

endmodule

