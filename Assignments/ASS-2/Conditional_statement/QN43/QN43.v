module if_logic (
    input a, b,
    output reg y
);
    always @(*) begin
        if (a & b)
            y = 1'b1;
        else
            y = 1'b0;
    end
endmodule


module tb_if_logic;
    reg a, b;
    wire y;

    if_logic uut(a, b, y);

    initial begin
        a = 0; b = 0; #2;
        a = 0; b = 1; #2;
        a = 1; b = 0; #2;
        a = 1; b = 1; #2;
        $finish;
    end

    initial begin
        $monitor("Time=%0t | a=%b b=%b | y=%b", $time, a, b, y);
    end
endmodule

