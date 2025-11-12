module non_blocking_demo;
    reg clk;
    reg [3:0] A, B;

    always @(posedge clk) begin
        A <= B;
        B <= A;
    end

    initial clk = 0;
    always #5 clk = ~clk;

    initial begin
        A = 4'd1;
        B = 4'd5;
        #50 $finish;
    end

    initial begin
        $monitor("Time=%0t clk=%0d A=%0d B=%0d", $time, clk, A, B);
    end
endmodule

