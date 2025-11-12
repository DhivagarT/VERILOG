module sync_counter (
    input clk,
    input reset,
    output reg [3:0] count
);

    always @(posedge clk) begin
        if (reset)
            count <= 4'b0000;
        else
            count <= count + 1;
    end
endmodule


module tb_sync_counter;
    reg clk, reset;
    wire [3:0] count;

    sync_counter uut(clk, reset, count);

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        reset = 1;
        #10 reset = 0;
        #100 reset = 1;
        #10 reset = 0;
    end

    initial begin
        $monitor("Time=%0t | reset=%0d | count=%b", $time, reset, count);
        #150 $finish;
    end
endmodule

