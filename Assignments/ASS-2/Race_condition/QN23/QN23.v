module race_demo;
    reg a_block, b_block;
    reg a_nonblock, b_nonblock;

    initial begin
        a_block = 0;
        b_block = 1;
        a_nonblock = 0;
        b_nonblock = 1;
    end

    always @(*) begin
        #1 a_block = b_block;
    end

    always @(*) begin
        #1 b_block = a_block;
    end

    always @(*) begin
        #1 a_nonblock <= b_nonblock;
    end

    always @(*) begin
        #1 b_nonblock <= a_nonblock;
    end

    initial begin
        $display("Time a_block b_block a_nonblock b_nonblock");
        $monitor("%0t %0d %0d %0d %0d", $time, a_block, b_block, a_nonblock, b_nonblock);
        #10 $finish;
    end

endmodule

