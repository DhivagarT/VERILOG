module race_condition_blocking;
    reg a, b;

    initial begin
        a = 0;
        b = 1;
    end

    always @(*) begin
        #1 a = b;
    end

    always @(*) begin
        #1 b = a;
    end

    initial begin
        $monitor("Time=%0t | a=%0d b=%0d", $time, a, b);
        #10 $finish;
    end
endmodule

