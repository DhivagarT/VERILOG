module non_blocking_demo;
    reg a, b;

    initial begin
        a = 0;
        b = 1;
    end

    always @(*) begin
        b <= a;
        a <= b;
    end

    initial begin
        $monitor("Time=%0t | a=%0d b=%0d", $time, a, b);
        #10 $finish;
    end
endmodule

