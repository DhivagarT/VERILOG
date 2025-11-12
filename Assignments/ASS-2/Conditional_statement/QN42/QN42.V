module priority_logic (
    input a, b, c,
    output reg y
);
    always @(*) begin
        if (a)
            y = 1'b1;
        else if (b)
            y = 1'b0;
        else if (c)
            y = 1'b1;
        else
            y = 1'b0;
    end
endmodule


module tb_priority_logic;
    reg a, b, c;
    wire y;

    priority_logic uut(a, b, c, y);

    initial begin
        a = 0; b = 0; c = 0;
        #2 a = 1; b = 0; c = 0;
        #2 a = 0; b = 1; c = 0;
        #2 a = 0; b = 0; c = 1;
        #2 a = 1; b = 1; c = 1;
        #2 a = 0; b = 0; c = 0;
        #2 $finish;
    end

    initial begin
        $monitor("Time=%0t | a=%b b=%b c=%b | y=%b", $time, a, b, c, y);
    end
endmodule

