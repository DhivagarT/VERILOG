module priority_no_else (
    input a, b,
    output reg y
);
    always @(*) begin
        if (a)
            y = 1'b1;
        else if (b)
            y = 1'b0;
        // No final else → output not assigned when a=0 and b=0
    end
endmodule


module tb_priority_no_else;
    reg a, b;
    wire y;

    priority_no_else uut(a, b, y);

    initial begin
        a = 0; b = 0; #2;
        a = 1; b = 0; #2;
        a = 0; b = 1; #2;
        a = 0; b = 0; #2;
        $finish;
    end

    initial begin
        $monitor("Time=%0t | a=%b b=%b | y=%b", $time, a, b, y);
    end
endmodule

