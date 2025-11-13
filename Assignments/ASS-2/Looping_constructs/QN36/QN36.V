module forever_example;
    reg clk;
    reg q1, q2;
    reg reset;
    reg internal_clk;
    integer count;

    initial begin
        internal_clk = 0;
        forever #5 internal_clk = ~internal_clk;
    end

    always @(posedge internal_clk or posedge reset) begin
        if (reset)
            q1 <= 0;
        else
            q1 <= ~q1;
    end

    always @(posedge internal_clk or posedge reset) begin
        if (reset) begin
            count <= 0;
            q2 <= 0;
        end
        else if (count < 5) begin
            q2 <= ~q2;
            count <= count + 1;
        end
    end

    initial begin
        reset = 1;
        #2 reset = 0;
        #60 $finish;
    end

    initial begin
        $monitor("Time=%0t | internal_clk=%b | q1=%b | q2=%b | count=%0d",
                  $time, internal_clk, q1, q2, count);
    end
endmodule

