module counter_repeat;
    reg [2:0] count; // 3-bit counter
    reg clk;

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        count = 0;
        repeat (8) begin
            @(posedge clk);
            count = count + 1;
            $display("Time=%0t | count=%0d", $time, count);
        end
        $finish;
    end
endmodule

