module synchronous_FIFO_tb;

reg clk;
reg rst;
reg we_enb;
reg re_enb;
reg [7:0] data_in;
wire [7:0] data_out;
wire full;
wire empty;

Synchronous_FIFO dut(
    .clk(clk),
    .rst(rst),
    .we_enb(we_enb),
    .re_enb(re_enb),
    .data_in(data_in),
    .data_out(data_out),
    .full(full),
    .empty(empty)
);

always #5 clk = ~clk;

initial begin
    clk = 0;
    rst = 1;
    we_enb = 0;
    re_enb = 0;
    data_in = 0;

    $dumpfile("fifo.vcd");
    $dumpvars(0,synchronous_FIFO_tb);

    // RESET
    #12 rst = 0;

   
    // WRITE UNTIL FULL
    $display("==== WRITE PHASE ====");
    repeat(10) begin
        @(posedge clk);
        if (!full) begin
            we_enb = 1;
            data_in = $random;
        end
        else we_enb = 0;
    end

 
    // READ UNTIL EMPTY
    $display("==== READ PHASE ====");
    we_enb = 0;
    repeat(10) begin
        @(posedge clk);
        if (!empty)
            re_enb = 1;
        else
            re_enb = 0;
    end

    // RANDOM READ/WRITE
 
    $display("==== RANDOM PHASE ====");
    repeat(20) begin
        @(posedge clk);
        we_enb = $random;
        re_enb = $random;
        data_in = $random;
    end

    #50 $finish;
end

endmodule

