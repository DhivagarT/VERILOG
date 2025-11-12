module flipflop_exchange;
    reg clk;
    reg ff1_block, ff2_block;
    reg ff1_nonblock, ff2_nonblock;

    initial clk = 0;
    always #1 clk = ~clk;

    initial begin
        ff1_block = 0;
        ff2_block = 1;
        ff1_nonblock = 0;
        ff2_nonblock = 1;
    end

    always @(posedge clk) begin
        ff1_block = ff2_block;
        ff2_block = ff1_block;
    end

    always @(posedge clk) begin
        ff1_nonblock <= ff2_nonblock;
        ff2_nonblock <= ff1_nonblock;
    end

    initial begin
        $display("Time clk | ff1_block ff2_block | ff1_nonblock ff2_nonblock");
        $monitor("%0t  %b   |    %b        %b   |      %b          %b",
                 $time, clk, ff1_block, ff2_block, ff1_nonblock, ff2_nonblock);
        #10 $finish;
    end
endmodule

