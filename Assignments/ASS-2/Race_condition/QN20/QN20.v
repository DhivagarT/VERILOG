//by using non blocking assignment race condition is overcome 


module race_condition_nonblocking;
    reg a, b;

    initial begin
        a = 0;
        b = 1;
    end

    always @(*) begin
        #1 a <= b;   // non-blocking
    end

    always @(*) begin
        #1 b <= a;   // non-blocking
    end

    initial begin
        $monitor("time=%0t | a=%0d b=%0d", $time, a, b);
        #10 $finish;
    end
endmodule

