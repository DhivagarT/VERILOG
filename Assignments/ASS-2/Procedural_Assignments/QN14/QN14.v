module pipeline_reg;
    reg clk, rst;
    reg [3:0] data_in;
    reg [3:0] d[3:0];

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            d[0] <= 4'd0;
            d[1] <= 4'd0;
            d[2] <= 4'd0;
            d[3] <= 4'd0;
        end else begin
            d[0] <= data_in;
            d[1] <= d[0];
            d[2] <= d[1];
            d[3] <= d[2];
        end
    end

    initial clk = 0;
    always #3 clk = ~clk;

    initial begin
        rst = 1;
        data_in = 4'd0;
        #5 rst = 0;
        #10 data_in = 4'd1;
        #10 data_in = 4'd2;
        #10 data_in = 4'd3;
        #10 data_in = 4'd4;
        #10 $finish;
    end

    initial begin
        $monitor("Time=%0t clk=%0d rst=%0d data_in=%0d d0=%0d d1=%0d d2=%0d d3=%0d",
                 $time, clk, rst, data_in, d[0], d[1], d[2], d[3]);
    end
endmodule





