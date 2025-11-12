module buffer_sim;
    reg clk;
    reg [7:0] data_in;
    reg [7:0] buffer;
    integer i;

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        data_in = 8'd10; // Initial data
        buffer = 0;

        repeat (5) begin
            @(posedge clk);
            buffer = data_in;
            $display("Time=%0t | data_in=%0d buffer=%0d", $time, data_in, buffer);
            data_in = data_in + 5; // Update input for next cycle
        end

        $finish;
    end
endmodule

