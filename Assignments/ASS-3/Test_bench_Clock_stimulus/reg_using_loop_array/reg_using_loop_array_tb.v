module reg_file_tb;

reg clk;
reg we;
reg [2:0] addr;
reg [3:0] wdata;
wire [3:0] rdata;

reg_file dut(clk, we, addr, wdata, rdata);

initial clk = 0;
always #5 clk = ~clk;

integer i;

initial begin
    $dumpfile("rf.vcd");
    $dumpvars(0, reg_file_tb);

    we = 1;
    for (i = 0; i < 8; i = i + 1) begin
        addr = i;
        wdata = i;
        #10;
    end

    we = 0;
    for (i = 0; i < 8; i = i + 1) begin
        addr = i;
        #10;
        $display("reg[%0d] = %0d", addr, rdata);
    end

    $finish;
end

endmodule

